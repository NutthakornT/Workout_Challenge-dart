import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hcrl3333/Widgets/Level_card_widget.dart';
import 'package:hcrl3333/mock_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 254, 98, 98),
        title: Text(
          "Fitness Challenge",
          style: GoogleFonts.prompt(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 2, 2, 2),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 100.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Choose Level",
                style: GoogleFonts.prompt(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              workoutcard(quiz1, context),
              const SizedBox(
                height: 10,
              ),
              workoutcard(quiz2, context),
              const SizedBox(
                height: 10,
              ),
              workoutcard(quiz3, context),
            ],
          ),
        ),
      ), //row
    );
  }
}
