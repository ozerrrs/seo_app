import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String hintText;
  final Function()? onTap;
  final Color? color; // Renk parametresi eklendi

  const MyButton({
    super.key,
    required this.onTap,
    required this.hintText,
    this.color, // Opsiyonel olarak alınır
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.symmetric(horizontal: 55),
        decoration: BoxDecoration(
          color:
              color ?? const Color.fromARGB(255, 26, 7, 66), // Varsayılan renk
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            hintText,
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
