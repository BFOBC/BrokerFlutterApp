import 'package:flutter/material.dart';

class InitialButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const InitialButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(200, 50), // Set the fixed size (width, height)
        foregroundColor: Colors.orange,
        backgroundColor: Colors.white, // Text color
        side: const BorderSide(color: Colors.orange, width: 2), // Border color and width
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Set the border radius
        ),
      ),
      child: Text(text),
    );
  }
}