import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Timer.dart';

class Confirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 81, 0, 0),
        title: Text(
          "Confirm Difficulty",
          style: GoogleFonts.prompt(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      /////////////////////////////body
      ///
      ///
      ///
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EasyPage()),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Center(
                  child: Text(
                    "Easy",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 70, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            ////////////////////////////////////////////

            // Space between buttons
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MediumPage()),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Center(
                  child: Text(
                    "Medium",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 70, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            ///////////////////////////////////////////////////

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HardPage()),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Center(
                  child: Text(
                    "Hard",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 70, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
