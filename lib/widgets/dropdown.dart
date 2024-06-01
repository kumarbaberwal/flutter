import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String selectedValue = 'ORANGE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          'DropDown',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              height: 70,
              width: MediaQuery.of(context).size.width,
              // color: Colors.red,
              child: DropdownButton<String>(
                isExpanded: true,
                dropdownColor: Colors.grey.shade100,
                value: selectedValue,
                icon: const Icon(Icons.arrow_drop_down_circle),
                items: <String>['ORANGE', 'APPLE', 'BANANA', 'CAKE', 'ICECREAM'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(value: value, child: Text(value));
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
