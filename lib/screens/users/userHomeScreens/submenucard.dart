import 'package:flutter/material.dart';
import 'package:uchef/widgets/usercustomwidgets/menucardwidget.dart';
import 'package:uchef/widgets/usercustomwidgets/submenucardwidget.dart';

class submenucard extends StatelessWidget {
  const submenucard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Biriyani's",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.redAccent], // Two colors
              stops: [0.5, 0.5], // Prevent color mixing, half for each color
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: double.infinity,
              width: MediaQuery.of(context).size.width*0.5,
              color: Colors.redAccent,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                submenucardwidget(ind: 0,),
                submenucardwidget(ind: 0,),
                submenucardwidget(ind: 0,),
                submenucardwidget(ind: 0,),
                submenucardwidget(ind: 0,),
                submenucardwidget(ind: 0,),

              ],
            ),
          )
        ],
      ),
    );
  }
}
