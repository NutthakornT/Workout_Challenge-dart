import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hcrl3333/Screen/quiz_screen.dart';

Widget workoutcard(Map<String, dynamic> quiz, BuildContext context) {
  return GestureDetector(
    onTap: () {
      // Navigate to QuizScreen with the quiz data
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return QuizScreen(quiz: quiz);
      }));
    }, // Navigate on tap

    child: Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 194, 194, 194),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  quiz["quiz_name"],
                  style: GoogleFonts.prompt(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Optional icon or spacer can be added here
              ],
            ),
            Center(
              child: Image.network(
                quiz['image'],
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            // Optional description text can be added here
          ],
        ),
      ),
    ),
  ); // Detect action of user
}
