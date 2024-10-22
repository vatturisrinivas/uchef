import 'package:flutter/material.dart';
import 'package:uchef/screens/users/userScreenNavigation.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: usernavigationscreen()
    );
  }
}
