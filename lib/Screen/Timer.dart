import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hcrl3333/Screen/home_screen.dart';
import 'button_widget_easy.dart';
import 'button_widget_medium.dart';
import 'button_widget_hard.dart';

class EasyPage extends StatefulWidget {
  @override
  _EasyPageState createState() => _EasyPageState();
}

class _EasyPageState extends State<EasyPage> {
  static const maxSecond = 180;
  int seconds = maxSecond;
  Timer? timer;
  String displayText = 'Get Ready!!!';

  void startTimer() {
    if (timer != null) {
      timer!.cancel();
    }
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (seconds > 0) {
        setState(() {
          seconds--;
          if (seconds > 120) {
            displayText = "Squats!!";
          } else if (seconds <= 120 && seconds > 60) {
            displayText =
                "Jumpping Jacks!!"; // Message at 120 seconds (after 60 seconds)
          } else if (seconds <= 60 && seconds > 0) {
            displayText = "Lunges!!"; // Message at 60 seconds
          } else if (seconds == 0) {
            displayText = "Time's Up!"; // Final message when time is up
          }
        });
      } else {
        timer?.cancel(); // Stop the timer when it reaches 0
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        toolbarHeight: 100.0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                  (Route<dynamic> route) => false,
                );
              },
              icon: Icon(Icons.home))
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightGreen, Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 150),
            buildTextShow(),
            const SizedBox(height: 30),
            // Pushes the content down
            buildTimer(),
            const SizedBox(height: 40),
            buildButtons(), // from buttom_widget_easy
            Spacer(), // Pushes the content up
          ],
        ),
      ),
    );
  }

  Widget buildButtons() {
    return ButtonWidget1(
      text: 'Start Timer',
      color: Colors.black,
      backgroundColor: Colors.white,
      onClicked: () {
        startTimer(); // Start the timer when clicked
      },
    );
  }

  Widget buildTimer() => SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: seconds / maxSecond,
            valueColor: AlwaysStoppedAnimation(Colors.white),
            strokeWidth: 20,
            backgroundColor: Colors.greenAccent,
          ),
          Center(
            child: buildTime(),
          )
        ],
      ));

  Widget buildTime() {
    return Text(
      '$seconds',
      style: GoogleFonts.prompt(
        fontSize: 80,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildTextShow() {
    return Text(displayText,
        style: GoogleFonts.frederickaTheGreat(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white));
  }
}

class MediumPage extends StatefulWidget {
  @override
  _MediumPageState createState() => _MediumPageState();
}

class _MediumPageState extends State<MediumPage> {
  static const maxSecond = 900;
  int seconds = maxSecond;
  Timer? timer;
  String displayText = 'Get Ready!!!';

  void startTimer() {
    if (timer != null) {
      timer!.cancel();
    }
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (seconds > 0) {
        setState(() {
          seconds--;
          if (seconds > 600) {
            displayText = "Bench Press!!";
          } else if (seconds <= 600 && seconds > 300) {
            displayText = "Deathlift!!";
          } else if (seconds <= 300 && seconds > 0) {
            displayText = "Shoulder Press!!";
          } else if (seconds == 0) {
            displayText = "Time's Up!";
          }
        });
      } else {
        timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 192, 97),
        centerTitle: true,
        toolbarHeight: 100.0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                  (Route<dynamic> route) => false,
                );
              },
              icon: Icon(Icons.home))
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 255, 192, 97), Colors.orange],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 150),
            buildTextShow(),
            const SizedBox(height: 30),
            // Pushes the content down
            buildTimer(),
            const SizedBox(height: 40),
            buildButtons(), // from buttom_widget_medium
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget buildButtons() {
    return ButtonWidget2(
      text: 'Start Timer',
      color: Colors.black,
      backgroundColor: Colors.white,
      onClicked: () {
        startTimer(); // Start the timer when clicked
      },
    );
  }

  Widget buildTimer() => SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: seconds / maxSecond,
            valueColor: AlwaysStoppedAnimation(Colors.white),
            strokeWidth: 20,
            backgroundColor: Colors.greenAccent,
          ),
          Center(
            child: buildTime(),
          )
        ],
      ));

  Widget buildTime() {
    final minutes = seconds ~/ 60; // Integer division to get minutes
    final secondsLeft = seconds % 60; // Remainder to get seconds
    return Text(
      '${minutes.toString().padLeft(2, '0')}:${secondsLeft.toString().padLeft(2, '0')}',
      style: GoogleFonts.prompt(
        fontSize: 60,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildTextShow() {
    return Text(displayText,
        style: GoogleFonts.frederickaTheGreat(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white));
  }
}

/*class MediumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("This is Medium Page")),
    );
  }
}*/

/*class HardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("This is Hard page")),
    );
  }
}*/

class HardPage extends StatefulWidget {
  @override
  _HardPageState createState() => _HardPageState();
}

class _HardPageState extends State<HardPage> {
  static const maxSecond = 3600;
  int seconds = maxSecond;
  Timer? timer;
  String displayText = "Get Ready!!";
  void startTimer() {
    if (timer != null) {
      timer!.cancel();
    }
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (seconds > 0) {
        setState(() {
          seconds--;
          if (seconds > 2400) {
            displayText = "Walking Lunges!!";
          } else if (seconds <= 2400 && seconds > 1200) {
            displayText = "Mountain Climbers!!";
          } else if (seconds <= 1200 && seconds > 0) {
            displayText = "Sumo Squats!!";
          } else if (seconds == 0) {
            displayText = "Time's Up!";
          }
        });
      } else {
        timer?.cancel(); // Stop the timer when it reaches 0
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 138, 130),
        centerTitle: true,
        toolbarHeight: 100.0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                  (Route<dynamic> route) =>
                      false, // This condition ensures all previous routes are removed
                );
              },
              icon: Icon(Icons.home))
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 255, 138, 130), Colors.red],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 150),
            buildTextShow(),
            const SizedBox(height: 30),
            // Pushes the content down
            buildTimer(),
            const SizedBox(height: 40),
            buildButtons(), // from buttom_widget_hard
            Spacer(), // Pushes the content up
          ],
        ),
      ),
    );
  }

  Widget buildButtons() {
    return ButtonWidget3(
      text: 'Start Timer',
      color: Colors.black,
      backgroundColor: Colors.white,
      onClicked: () {
        startTimer(); // Start the timer when clicked
      },
    );
  }

  Widget buildTimer() => SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: seconds / maxSecond,
            valueColor: AlwaysStoppedAnimation(Colors.white),
            strokeWidth: 20,
            backgroundColor: Colors.greenAccent,
          ),
          Center(
            child: buildTime(),
          )
        ],
      ));

  Widget buildTime() {
    final minutes = seconds ~/ 60; // Integer division to get minutes
    final secondsLeft = seconds % 60; // Remainder to get seconds
    return Text(
      '${minutes.toString().padLeft(2, '0')}:${secondsLeft.toString().padLeft(2, '0')}',
      style: GoogleFonts.prompt(
        fontSize: 60,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildTextShow() {
    return Text(displayText,
        style: GoogleFonts.frederickaTheGreat(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white));
  }
}
