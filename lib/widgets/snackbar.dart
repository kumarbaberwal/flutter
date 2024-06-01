import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber,
          title: const Text(
            'SnackBar',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        // margin: const EdgeInsets.only(bottom: 12),
        body: Center(
            child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.black),
          ),
          onPressed: () {
            final snackBar = SnackBar(
              action: SnackBarAction(
                  label: 'Exit', textColor: Colors.black, onPressed: () {}),
              margin: const EdgeInsets.all(25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              behavior: SnackBarBehavior.floating,
              // padding: const EdgeInsets.all(10),
              duration: const Duration(milliseconds: 1000),
              backgroundColor: Colors.amber,
              content: const Text(
                'You Pressed The Button !',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text(
            'Show SnackBar',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        )));
  }
}
