import 'package:flutter/material.dart';
import 'package:uchef/widgets/customAppBar.dart';

class userhomescreen extends StatelessWidget {
  const userhomescreen({super.key});

  @override
  Widget build(BuildContext context) {

    var screenheight= MediaQuery.of(context).size.height;
    var screenwidth= MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: MenuCardAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              color: Colors.black,
            ),
            Container(
              height: 300,
              color: Colors.orange,
            ),
            Container(
              height: 300,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
