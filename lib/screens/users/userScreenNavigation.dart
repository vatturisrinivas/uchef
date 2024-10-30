import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:uchef/screens/users/userHomeScreens/userHomeScreen.dart';
import 'package:uchef/screens/users/userOrdersScreen.dart';

class usernavigationscreen extends StatefulWidget {
  const usernavigationscreen({super.key});

  @override
  State<usernavigationscreen> createState() => _usernavigationscreenState();
}

class _usernavigationscreenState extends State<usernavigationscreen> {
  var _currentIndex = 1;

  List<Widget> _widgetOptions = <Widget>[

    itemsscreen(),
    userhomescreen(),
    Text('Profile Screen'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: SalomonBottomBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.green.shade900,
        currentIndex: _currentIndex,
        onTap: (i)=>setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Items"),
            //selectedColor: Colors.orange,
          ),

          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            //selectedColor: Colors.purple,
          ),

          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Person"),
            //selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
