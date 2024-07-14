import 'package:flutter/material.dart';

import '../widgets/InitialButtons.dart';

class LocationPermission extends StatelessWidget {
  const LocationPermission({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Container(child:
      Column(children: [
        SizedBox(height: screenHeight * 0.35),
        Text('Hi, nice to meet you!',style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold
        ),),
        Center(
          child: Text('Please turn on your device\n     location to proceed.',style: TextStyle(
              fontSize: 16,
            color: Colors.grey
          ),),
        ),
        SizedBox(height: screenHeight * 0.05),

        InitialButton(
          text: 'Use current location',
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
