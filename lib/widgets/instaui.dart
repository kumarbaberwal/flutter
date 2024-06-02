import 'package:flutter/material.dart';

class InstaUIWidget extends StatefulWidget {
  const InstaUIWidget({super.key});

  @override
  State<InstaUIWidget> createState() => _InstaUIWidgetState();
}

class _InstaUIWidgetState extends State<InstaUIWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text(
          'kumar_baberwal',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            // color: Colors.yellow,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 150,
                  // color: Colors.amber,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/kumar.jpg'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'नितेश Kumᴀ̶r',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "'Introvert' Engineer",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          profileDetails('0', 'posts'),
                          profileDetails('71', 'followers'),
                          profileDetails('57', 'following'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                        Colors.grey.shade300)),
                                onPressed: () {},
                                child: const Text(
                                  'Follow',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                                color: Colors.white),
                            child: const Icon(
                              Icons.arrow_downward,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 120,
            // color: Colors.pink,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                          // borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/kumar.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    const Text('Me'),
                  ],
                );
              },
            ),
          ),
          SizedBox(
              height: 80,
              // color: Colors.brown,
              child: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey.shade500,
                      indicatorColor: Colors.black,
                      tabs: const [
                        Tab(
                          icon: Icon(
                            Icons.grid_on_outlined,
                            size: 30,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.person_pin_rounded,
                            size: 30,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.favorite_outline_rounded,
                            size: 30,
                          ),
                        ),
                      ]))),
          Expanded(
              child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/355748/pexels-photo-355748.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        fit: BoxFit.cover),
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10)),
              );
            },
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Person'),
        ],
        currentIndex: 3,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade400,
        elevation: 0,
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  Widget profileDetails(String text1, String text2) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(text2),
      ],
    );
  }
}
