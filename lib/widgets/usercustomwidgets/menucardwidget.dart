import 'package:flutter/material.dart';
import 'package:uchef/screens/users/userHomeScreens/submenucard.dart';

class menucardwidget extends StatelessWidget {
  final int ind;
  const menucardwidget({
    super.key,
    required this.ind,
  });

  @override
  Widget build(BuildContext context) {
    var screenheight= MediaQuery.of(context).size.height;
    var screenwidth= MediaQuery.of(context).size.width;
    return Center(
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>submenucard()));
        },
        child: Container(
          height: screenheight*0.2,
          width: screenwidth*0.9,
          //color: Colors.grey,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: screenheight*0.15,
                  width: screenwidth*0.78,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3), // Shadow color
                          spreadRadius: 3, // Spread radius
                          blurRadius: 7,  // Blur radius
                          offset: Offset(0, 3),
                        )
                      ]
                  ),
                ),
              ),
              Center(child: Text("Biriyani's",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow,
                  ),
                  child: Icon(Icons.arrow_forward),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgfn-EvsTH557h0o1Te1r6O4vSFfvOZjTX8A&s"),fit: BoxFit.cover
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6), // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7,  // Blur radius
                        offset: Offset(0, 3), // Changes position of shadow (x, y)
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
