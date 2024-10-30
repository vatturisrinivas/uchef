import 'package:flutter/material.dart';
import 'package:uchef/screens/users/userHomeScreens/submenucard.dart';
import 'package:uchef/widgets/customAppBar.dart';
import 'package:uchef/widgets/usercustomwidgets/menucardwidget.dart';

class userhomescreen extends StatelessWidget {
  const userhomescreen({super.key});

  @override
  Widget build(BuildContext context) {

    var screenheight= MediaQuery.of(context).size.height;
    var screenwidth= MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(child: Text('MenuCard',style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.white], // Two colors
              //begin: Alignment.topLeft,
              //end: Alignment.bottomRight,
              stops: [0.5, 0.5], // Prevent color mixing, half for each color
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: screenwidth*0.5,
            color: Colors.redAccent,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                menucardwidget(ind:0),
                menucardwidget(ind:0),
                menucardwidget(ind:0),
                menucardwidget(ind:0),
                menucardwidget(ind:0),
                menucardwidget(ind:0)
              ],

            ),
          ),
        ],
      ),
    );
  }
}
