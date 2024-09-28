import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget3 extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final Color color;
  final Color backgroundColor;

  const ButtonWidget3({
    Key? key,
    required this.text,
    this.color = Colors.white,
    this.backgroundColor = Colors.black,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      ),
      child: Text(
        text,
        style: GoogleFonts.prompt(fontSize: 30, color: color),
      ),
      onPressed: onClicked,
    );
  }
}
