import 'package:flutter/material.dart';

class PicUIWidget extends StatefulWidget {
  const PicUIWidget({super.key});

  @override
  State<PicUIWidget> createState() => _PicUIWidgetState();
}

class _PicUIWidgetState extends State<PicUIWidget> {
  @override
  Widget build(BuildContext context) {
    // var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                  child: SizedBox(
                height: 500,
                // color: Colors.yellow,
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      // color: Colors.red,
                      height: 450,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://wallpaper.dog/large/10901911.jpg'),
                              fit: BoxFit.cover)),
                    )),
                    const Positioned(
                        bottom: 0,
                        right: 25,
                        child: CircleAvatar(
                          radius: 50,
                          // backgroundColor: Colors.blue,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/148860110?v=4'),
                        )),
                    const Positioned(
                        top: 50,
                        right: 50,
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                          size: 30,
                        )),
                    const Positioned(
                        top: 50,
                        left: 40,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        )),
                  ],
                ),
              )),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            width: w,
            // color: Colors.lightBlue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Get To Know',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.purple),
                ),
                const Text(
                  'About Me',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.orange),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Software Developer, Flutter Developer',
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                rowIconText('1M', Icons.favorite, Colors.red.shade400),
                rowIconText('150K', Icons.share, Colors.black),
                rowIconText('200K', Icons.comment, Colors.grey.shade500),
                rowIconText('1K', Icons.add_reaction, Colors.orange.shade300),
              ],
            ),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              "Hi, I'm Nitesh Kumar pursuing B. Tech Computer Science Engineering from Panipat Institute of Engineering and Techknology. I used to learn new things everyday instead of wasting valueable time to develop my skills.",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }

  Widget rowIconText(String text, IconData icon, Color color) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          width: 5,
        ),
        Icon(
          icon,
          color: color,
        ),
      ],
    );
  }
}
