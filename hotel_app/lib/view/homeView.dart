import 'package:flutter/material.dart';
import 'package:hotel_app/controller/homeController.dart';

import 'Additions/drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: _head(),
        drawer: MyDrawer().myDrawer(),
        body: Select().select(_currentIndex),
        bottomNavigationBar: _footer(),
      ),
    );
  }

  _head() {
    return AppBar(
      title: Text("Explore"),
      centerTitle: true,
      leading: Icon(Icons.dehaze_rounded),
    );
  }

  _footer() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        print("Item:$index");
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.turned_in), label: "Save"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_rounded),
            label: "Book Now"),
      ],
    );
  }
}
