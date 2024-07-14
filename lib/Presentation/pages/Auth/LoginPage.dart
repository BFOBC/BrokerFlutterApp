import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Image(
                image: AssetImage('assets/loginbackground.png'),
                width: screenWidth,
                height: screenHeight * 0.4,
                fit: BoxFit.cover,
              ),
              Spacer(),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'By clicking start, you agree to our Terms and Conditions ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              width: screenWidth * 0.99,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    children: [
                      Text("Sign In",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 16.0),

                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'name@example.com',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0), // Set the border radius
                        borderSide: BorderSide(
                          color: Colors.grey, // Set the border color
                          width: 2.0, // Set the border width
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0), // Set the border radius when focused
                        borderSide: BorderSide(
                          color: Colors.grey, // Set the border color when focused
                          width: 2.0, // Set the border width when focused
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0), // Set the border radius
                        borderSide: BorderSide(
                          color: Colors.orange, // Set the border color
                          width: 2.0, // Set the border width
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0), // Set the border radius when focused
                        borderSide: BorderSide(
                          color: Colors.orange, // Set the border color when focused
                          width: 2.0, // Set the border width when focused
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      print('Login pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Color(0XFF4CE5B1),
                      fixedSize: Size(screenWidth * 0.7, 50), // Set fixed size
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text('Sign In'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}