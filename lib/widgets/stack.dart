import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: const Text(
            'Stack',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Stack(
          children: [
            Positioned(
                top: 100,
                child: Container(
                  // color: Colors.red,
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/kumar.jpg'))),
                  // child: Image.asset('assets/kumar.jpg')
                )),
            Positioned(
                left: 155,
                top: 150,
                child: Container(
                  height: 60,
                  width: 60,
                  // color: Colors.yellow,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow),
                )),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 340,
                width: 120,
                decoration: const BoxDecoration(color: Colors.amber),
              ),
            )
          ],
        ));
  }
}
