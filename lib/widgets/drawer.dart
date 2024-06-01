import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  DrawerWidgetState createState() => DrawerWidgetState();
}

class DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.yellow,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    // color: Colors.yellow[300],
                    padding: const EdgeInsets.all(15),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/148860110?v=4'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Kumar',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text('kumar@gmail.com'),
                          ],
                        )
                      ],
                    ),
                  )),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text('My Files'),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text('Share'),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('Star'),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text('Delete'),
              ),
              const ListTile(
                leading: Icon(Icons.details),
                title: Text('Details'),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.upload),
                title: Text('Upload'),
              ),
              const ListTile(
                leading: Icon(Icons.download),
                title: Text('Download'),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.close),
                title: Text('Close'),
              ),
              const ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Exit'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: const Text(
          'Drawer',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        child: const Center(
          child: Text(
            'Kumar Here!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
