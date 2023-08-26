import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Startscreen extends StatelessWidget {
  const Startscreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.museoModerno(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: startQuiz,
            style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll<Color>(Colors.deepPurple),
            ),
            child: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
