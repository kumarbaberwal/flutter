import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow.shade300,
            centerTitle: true,
            title: const Text(
              'TabBar',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            bottom: const TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.green,
                indicatorColor: Colors.green,
                indicatorWeight: 5,
                // dividerColor: Colors.yellow,
                tabs: [
                  Tab(
                    icon: Icon(Icons.chat),
                    text: 'Chat',
                  ),
                  Tab(
                    icon: Icon(Icons.chat_bubble_rounded),
                    text: 'Status',
                  ),
                  Tab(
                    icon: Icon(Icons.call),
                    text: 'Call',
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    text: 'Profile',
                  ),
                ]),
          ),
          body: TabBarView(children: [
            ListView(
              padding: const EdgeInsets.all(8),
              children: const [
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Chat with Kumar...'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Chat with Kumar...'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Chat with Kumar...'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Chat with Kumar...'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Chat with Kumar...'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Chat with Kumar...'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Chat with Kumar...'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Chat with Kumar...'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Chat with Kumar...'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Chat with Kumar...'),
                  ),
                ),
              ],
            ),
            // Center(
            //   child: Text(
            //     'Here is Chat',
            //     style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         color: Colors.black,
            //         fontStyle: FontStyle.normal,
            //         fontSize: 30),
            //   ),
            // ),
            // const Center(
            //   child: Text(
            //     'Here is Status',
            //     style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         color: Colors.black,
            //         fontStyle: FontStyle.normal,
            //         fontSize: 30),
            //   ),
            // ),
            GridView(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Icon(
                          Icons.person,
                          size: 35,
                        )),
                        Center(
                            child: Text(
                          'Kumar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Icon(
                          Icons.person,
                          size: 35,
                        )),
                        Center(
                            child: Text(
                          'Kumar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Icon(
                          Icons.person,
                          size: 35,
                        )),
                        Center(
                            child: Text(
                          'Kumar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Icon(
                          Icons.person,
                          size: 35,
                        )),
                        Center(
                            child: Text(
                          'Kumar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Icon(
                          Icons.person,
                          size: 35,
                        )),
                        Center(
                            child: Text(
                          'Kumar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Icon(
                          Icons.person,
                          size: 35,
                        )),
                        Center(
                            child: Text(
                          'Kumar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ListView(
              padding: const EdgeInsets.all(8),
              children: const [
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Call Kumar...'),
                    trailing: Icon(Icons.call),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Call Kumar...'),
                    trailing: Icon(Icons.call),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Call Kumar...'),
                    trailing: Icon(Icons.call),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Call Kumar...'),
                    trailing: Icon(Icons.call),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Call Kumar...'),
                    trailing: Icon(Icons.call),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Call Kumar...'),
                    trailing: Icon(Icons.call),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Call Kumar...'),
                    trailing: Icon(Icons.call),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Call Kumar...'),
                    trailing: Icon(Icons.call),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Call Kumar...'),
                    trailing: Icon(Icons.call),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kumar'),
                    subtitle: Text('Call Kumar...'),
                    trailing: Icon(Icons.call),
                  ),
                ),
              ],
            ),
            // const Center(
            //   child: Text(
            //     'Here is Call',
            //     style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         color: Colors.black,
            //         fontStyle: FontStyle.normal,
            //         fontSize: 30),
            //   ),
            // ),
            // const Center(
            //   child: Text(
            //     'This is Your Profile',
            //     style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         color: Colors.black,
            //         fontStyle: FontStyle.normal,
            //         fontSize: 30),
            //   ),
            // ),
            Stack(children: [
              Positioned(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                left: 160,
                top: 20,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  padding: const EdgeInsets.all(10),
                  children: const [
                    Card(
                      child: Center(
                        child: Icon(
                          Icons.person,
                          size: 50,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  // width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  left: 30,
                  top: 100,
                  child: const Text(
                    'Kumar',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )),
              Positioned(
                // width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                left: 30,
                top: 130,
                child: const Text(
                  '8398038XXX',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Positioned(
                  top: 250,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    padding: const EdgeInsets.all(10),
                    children: const [
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.privacy_tip),
                          title: Text('Privacy'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.notification_add),
                          title: Text('Notification'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.language),
                          title: Text('Language'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.storage),
                          title: Text('Storage'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.help),
                          title: Text('Help'),
                        ),
                      )
                    ],
                  )),
            ])
          ]),
        ));
  }
}
