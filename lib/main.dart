import 'package:flutter/material.dart';

import 'Presentation/pages/Auth/LoginPage.dart';
import 'Presentation/pages/Auth/VerificationPage.dart';
import 'Presentation/pages/LocationPermission.dart';
import 'Presentation/pages/loginOptions.dart';
import 'Presentation/pages/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const VerificationPage(),
    );
  }
}

