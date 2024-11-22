import 'package:flutter/material.dart';

class LogoTile extends StatelessWidget {
  final String imagePath;
  const LogoTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white!),
      ),
      child: Image.asset(
        imagePath,
        height: 100,
      ),
    );
  }
}
