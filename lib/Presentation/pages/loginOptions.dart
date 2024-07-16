import 'package:flutter/material.dart';

import '../widgets/InitialButtons.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Container(child:
           Column(children: [
             SizedBox(height: screenHeight * 0.35),

             InitialButton(
              text: 'Login as broker',
              onPressed: () {
                print('Button 23   git a33    pressed!');
              },
            ),
             SizedBox(height: screenHeight * 0.05),

             InitialButton(
               text: 'login as a Courier',
               onPressed: () {
                 print('Button 2 pressed!');
               },
             ),
             SizedBox(height: screenHeight * 0.05),
             Expanded(
               child: Align(
                 alignment: Alignment.bottomCenter,
                 child: Image(
                   image: AssetImage('assets/splashbackground.png'),
                   width: screenWidth * 0.99, // Adjust width as needed
                   height: screenHeight * 0.3, // Adjust height as needed
                   fit: BoxFit.cover, // Ensure the image covers the space
                 ),
               ),
             ),          ],)

  ),

    );
  }
}
