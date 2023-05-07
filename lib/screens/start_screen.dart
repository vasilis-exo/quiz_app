import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            icon: const Icon(Icons.quiz),
            label: Text('Start Quiz',
                style: GoogleFonts.comicNeue(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                )),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.purple[900],
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
            ),
            onPressed: startQuiz,
          ),
        ],
      ),
    );
  }
}
