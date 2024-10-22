import 'package:flutter/material.dart';

class MenuCardAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 400,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Align text to the bottom
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back), // Back button icon
                onPressed: () {
                  Navigator.of(context).pop(); // Go back to the previous screen
                },
              ),
              SizedBox(width: 48), // Empty space to align title to the bottom
            ],
          ),
          SizedBox(height: 10,),
          Text('Menu Card',style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
        ],
      ),

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(150.0); // Set custom height
}