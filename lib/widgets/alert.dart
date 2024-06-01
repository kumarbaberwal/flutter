import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: const Text(
          'Alert',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(
                  Colors.lightBlue,
                ),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
            onPressed: () {
              showMyDialog(context);
            },
            child: const Text(
              'Show Alert!',
              style: TextStyle(fontSize: 30, color: Colors.black),
            )),
      ),
    );
  }
}

Future<dynamic> showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          // backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          title: const Text('This is an Alert!'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text('This is a demo'),
                Text('This is Kumar'),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: () {}, child: const Text('Save')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Exit')),
          ],
        );
      });
}
