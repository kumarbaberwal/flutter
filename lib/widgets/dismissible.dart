import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  DismissibleWidgetState createState() => DismissibleWidgetState();
}

class DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> names = [
    'Kumar',
    'Kumar',
    'Kumar',
    'Kumar',
    'Kumar',
    'Kumar',
    'Kumar',
    // 'Sameer',
    // 'Bhavya',
    // 'Kashish',
    // 'Yashika',
    // 'Dashmeet',
    // 'Priyanshu'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: const Text(
          'Dismissible',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          final name = names[index];
          return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(names[index]),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                    margin: const EdgeInsets.all(25),
                    duration: const Duration(milliseconds: 1000),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(names[index]),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                    margin: const EdgeInsets.all(25),
                    duration: const Duration(milliseconds: 1000),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ));
                }
              },
              key: Key(name),
              background: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.red),
              ),
              secondaryBackground: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
              ),
              child: Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  title: Text(names[index]),
                ),
              ));
        },
      ),
    );
  }
}
