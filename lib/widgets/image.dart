import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: const Text('Image Widget',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          height: 300,
          width: 300,
          // child: CachedNetworkImage(
          //   imageUrl: 'https://avatars.githubusercontent.com/u/148860110?v=4',
          //   imageBuilder: (context, imageProvider) => Container(
          //     decoration: BoxDecoration(
          //       image: DecorationImage(image: imageProvider, )
          //     ),
          //   ),
          //   placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
          //   errorWidget: (context, url, error) =>
          //       const Icon(Icons.error_outline),
          // ),
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  blurRadius: 80,
                  spreadRadius: 10,
                  color: Colors.lightBlue,
                )
              ],
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(500),
              image: const DecorationImage(
                  image: AssetImage('assets/kumar.jpg'), fit: BoxFit.cover
                  // NetworkImage('https://avatars.githubusercontent.com/u/148860110?v=4')
                  )),
        ),
      ),
    );
  }
}
