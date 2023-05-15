import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final void Function() onStartQuiz;

  const StartScreen(this.onStartQuiz, {super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logo.png',
            color: const Color.fromARGB(204, 255, 255, 255),
            width: 250,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            'React Quiz',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          OutlinedButton.icon(
            icon: const Icon(
              Icons.arrow_right,
            ),
            label: Text(
              'Start Quiz',
              style: GoogleFonts.roboto(
                fontSize: 24,
              ),
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: onStartQuiz,
          )
        ],
      ),
    );
  }
}
