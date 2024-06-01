import 'package:first/widgets/alert.dart';
import 'package:first/widgets/dismissible.dart';
import 'package:first/widgets/rows_cols.dart';
import 'package:first/widgets/snackbar.dart';
import 'package:flutter/material.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  int selectedindex = 0;

  PageController pageController = PageController();

  // List<Widget> widgets = [
  //   const Text('HOME'),
  //   const Text('SEARCH'),
  //   const Text('ADD'),
  //   const Text('PROFILE'),
  // ];

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   centerTitle: true,
      //   title: const Text(
      //     'Bottom NavBar',
      //     style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      //   ),
      // ),
      body: PageView(
        controller: pageController,
        children: const [
          AlertWidget(),
          DismissibleWidget(),
          RowsCols(),
          SnackbarWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'SEARCH'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'ADD'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROFILE'),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.green,
        onTap: onTapped,
      ),
    );
  }
}
