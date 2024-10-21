import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Stack(
                    children: [
                      // Center(
                      //   child: Text('Sign UP'),
                      // ),
                      Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white.withOpacity(0.50)
                            ),
                            child: TextFormField(
                              clipBehavior: Clip.none,
                              decoration: InputDecoration(
                                  hintText: 'Enter Your Mail',
                                  labelText: 'Username'
                              ),
                            ),
                          ))
                    ],
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
