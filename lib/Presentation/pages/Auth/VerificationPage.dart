import 'package:flutter/material.dart';
import '../../widgets/AuthButtons.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,  // Provide a finite height
          child: Stack(
            children: [
              Positioned(
                child: Image(
                  image: AssetImage('assets/AuthVerificationBackground.png'),
                  width: screenWidth,
                  height: screenHeight * 0.35,
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                left: 5,
                top: 110,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Phone Verification ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Positioned(
                left: 5,
                top: 170,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Enter your OTP code here ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              
              Positioned(
                left: 50,
                top: 450,
                child: AuthButton(
                  text: 'Verify Now',
                  onPressed: () {
                    print('Login pressed');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
