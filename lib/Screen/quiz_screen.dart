import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages.dart'; // Adjust the path based on your project structure

class QuizScreen extends StatelessWidget {
  final Map<String, dynamic> quiz;

  const QuizScreen({Key? key, required this.quiz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 81, 0, 0),
        centerTitle: true,
        title: Text(
          quiz['quiz_name'],
          style: GoogleFonts.prompt(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                quiz['content'],
                style: GoogleFonts.oswald(fontSize: 30, color: Colors.black),
                textAlign: TextAlign.right,
              ),
              Center(
                child: Text(
                  quiz['content1'],
                  style: GoogleFonts.oswald(fontSize: 15, color: Colors.black),
                  textAlign: TextAlign.center, // Center text
                ),
              ),
              Center(
                child: Image.network(
                  quiz['image1'],
                  width: 150,
                  height: 150,
                ),
              ),
              Center(
                child: Text(
                  quiz['content2'],
                  style: GoogleFonts.oswald(fontSize: 15, color: Colors.black),
                  textAlign: TextAlign.center, // Center text
                ),
              ),
              Center(
                child: Image.network(
                  quiz['image2'],
                  width: 250,
                  height: 250,
                ),
              ),
              Center(
                // Center this widget
                child: Text(
                  quiz['content3'],
                  style: GoogleFonts.oswald(fontSize: 15, color: Colors.black),
                  textAlign: TextAlign.center, // Center text
                ),
              ),
              Center(
                // Center the image as well
                child: Image.network(
                  quiz['image3'],
                  width: 200,
                  height: 200,
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Confirm()),
                    );
                  },
                  child: Text("Ready!"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



/*class QuizScreen extends StatefulWidget {
  const QuizScreen({required this.quiz, super.key}); //need quiz

  final Map<String, dynamic> quiz; //pass quiz to use

  @override
  State<QuizScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<QuizScreen> {
  int currentQuestion = 0;
  int totalQuestion = 0;
  int score = 0;
  void nextQuestion(int answer) {
    setState(() {
      if (widget.quiz["problems"][currentQuestion][answer] == answer) {
        score++;
      }
      if (currentQuestion < widget.quiz["problems"].length - 1) {
        currentQuestion++;
      } else {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(
                  "Quiz Finish!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.prompt(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                content: Text(
                  "Your score is $score/${widget.quiz['problems'].length}",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.prompt(fontSize: 16),
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: Text(
                        "OK",
                        style: GoogleFonts.prompt(fontSize: 16),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Retry",
                        style: GoogleFonts.prompt(fontSize: 16),
                      ))
                ],
              );
            });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> problems = widget.quiz["problems"];
    int totalQuestion = problems.length;
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 107, 96),
          centerTitle: true,
          title: Text(
            widget.quiz["quiz_name"],
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 50,
              lineWidth: 10,
              progressColor: Colors.white,
              percent: currentQuestion / totalQuestion,
              center: Text(
                "${((currentQuestion / totalQuestion) * 100)}",
                style: GoogleFonts.prompt(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Question ${currentQuestion + 1}/${problems.length}",
              style: GoogleFonts.prompt(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              problems[currentQuestion]['question'],
              style: GoogleFonts.prompt(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => nextQuestion(1),
                  child: Text(
                    "${problems[currentQuestion]['options'][0]}",
                    style: GoogleFonts.prompt(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () => nextQuestion(2),
                  child: Text(
                    "${problems[currentQuestion]['options'][1]}",
                    style: GoogleFonts.prompt(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "${problems[currentQuestion]['options'][2]}",
                    style: GoogleFonts.prompt(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "${problems[currentQuestion]['options'][3]}",
                    style: GoogleFonts.prompt(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}*/
