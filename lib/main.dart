//Gemini API key
// 
// AIzaSyCcij1CWqvBasRXxM2axFVXNOfMFvvkios
// 


import 'package:uchef/screens/signup.dart';

import 'firebase_options.dart';

import 'package:flutter/cupertino.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uchef/screens/users/userScreenNavigation.dart';


void main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: usernavigationscreen()
      home: SignUP(),
      
    );
  }
}