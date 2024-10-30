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
  String? selectedRole;  // To store selected dropdown value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 400,  // Increased the height for better layout
                width: 350,   // Adjusted width to fit better
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white.withOpacity(0.8),  // Added background color for better visibility
                ),
                padding: const EdgeInsets.all(20.0),  // Added padding
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.50),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter Your Mail',
                          labelText: 'Username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.50),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter Your Password',
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        obscureText: true, // Password field should hide text
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('OR', style: TextStyle(color: Colors.black)),
                    SizedBox(height: 20),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Login with Gmail'),
                      ),
                    ),
                    SizedBox(height: 20),
                    DropdownButtonFormField<String>(
                      value: selectedRole,
                      items: [
                        DropdownMenuItem(
                          value: 'restaurant',
                          child: Text('Login as Restaurant'),
                        ),
                        DropdownMenuItem(
                          value: 'customer',
                          child: Text('Login as Customer'),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedRole = value;  // Update selected value
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'Login as',
                        hintText: 'Select Role',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
