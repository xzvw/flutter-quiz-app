import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_quiz_app/data/quiz_questions.dart';
import 'package:flutter_quiz_app/summary/summary.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> selectedAnswerList;
  final onRestartQuiz;

  const ResultsScreen({
    required this.selectedAnswerList,
    required this.onRestartQuiz,
    super.key,
  });

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < quizQuestions.length; i++) {
      summary.add({
        'index': i,
        'question': quizQuestions[i].question,
        'correct_answer': quizQuestions[i]
            .answerList[0], // the first answer is always the correct one
        'selected_answer': selectedAnswerList[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summary = getSummary();

    final numTotalQuestions = quizQuestions.length;
    final numCorrectlyAnsweredQuestions = summary
        .where((entry) => entry['selected_answer'] == entry['correct_answer'])
        .length;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered $numCorrectlyAnsweredQuestions out of $numTotalQuestions correctly',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 32,
          ),
          Summary(summary: summary),
          const SizedBox(
            height: 32,
          ),
          TextButton.icon(
            icon: const Icon(
              Icons.refresh,
            ),
            label: Text(
              'Restart Quiz',
              style: GoogleFonts.roboto(
                fontSize: 24,
              ),
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: onRestartQuiz,
          )
        ],
      ),
    );
  }
}
