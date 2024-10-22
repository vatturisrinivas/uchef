import 'package:flutter/material.dart';
// import 'package:uchef/main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUP(),
    );
  }
}

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
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
                          child: Column(
                            children: [
                              Container(
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
                              ),
                              SizedBox(height: 10,),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white.withOpacity(0.50)
                                ),
                                child: TextFormField(
                                  clipBehavior: Clip.none,
                                  decoration: InputDecoration(
                                      hintText: 'Enter Your Password',
                                      labelText: 'Password'
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,
                              child: Text('Or'),),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white.withOpacity(0.5)
                                ),
                                child: TextButton(
                                    onPressed: (){},
                                    child: Text('Login with Gmail'),
                                ),
                              )
                            ],
                          )
                      ),
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
