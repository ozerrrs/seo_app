import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String hintText;
  final Function()? onTap;

  const MyButton({
    super.key,
    required this.onTap,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.symmetric(horizontal: 55),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 26, 7, 66),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            hintText, // Correct usage here
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
