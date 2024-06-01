import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: const Text(
          'Bottom Sheet',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.amber),
            ),
            onPressed: () {
              showModalBottomSheet(
                isDismissible: false,
                enableDrag: true,
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  context: context,
                  builder: (context) {
                    return const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('Kumar'),
                          subtitle: Text('CR'),
                        ),
                        ListTile(
                          title: Text('Kumar'),
                          subtitle: Text('CR'),
                        ),
                        ListTile(
                          title: Text('Kumar'),
                          subtitle: Text('CR'),
                        ),
                        ListTile(
                          title: Text('Kumar'),
                          subtitle: Text('CR'),
                        ),
                        ListTile(
                          title: Text('Kumar'),
                          subtitle: Text('CR'),
                        ),
                      ],
                    );
                  });
            },
            child: const Text(
              'Show Bottom Sheet',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            )),
      ),
    );
  }
}
