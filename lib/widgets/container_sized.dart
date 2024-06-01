import 'package:flutter/material.dart';

class ContainerSized extends StatelessWidget {
  const ContainerSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[300],
          centerTitle: true,
          title: const Text(
            "Container and Sized Box",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Center(
          child: Container(
              // padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  // shape: BoxShape.circle,
                  // borderRadius:BorderRadius.circular(20),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 40,
                      spreadRadius: 5,
                      color: Colors.cyan,
                    )
                  ]),
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(8)),
                ),
                //   child: Text(
                // "Hello",
                // style: TextStyle(fontSize: 30),
              )),
          // ),
        )
        // const Center(
        //   child: SizedBox(
        //     height: 50,
        //     width: 50,
        //     child: Text("Hello"),
        //   ),
        // ),
        );
  }
}
