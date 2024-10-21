import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class usernavigationscreen extends StatefulWidget {
  const usernavigationscreen({super.key});

  @override
  State<usernavigationscreen> createState() => _usernavigationscreenState();
}

class _usernavigationscreenState extends State<usernavigationscreen> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i)=>setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Items"),
            selectedColor: Colors.orange,
          ),

          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),

          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Person"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
