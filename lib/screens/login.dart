import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              SizedBox(height: 10,),
                              Text('OR'),
                              SizedBox(height: 10,),
                              Container(
                                height: 50,
                                width: 400,
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
