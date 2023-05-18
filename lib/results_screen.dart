import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/quiz_questions.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> selectedAnswerList;

  const ResultsScreen({required this.selectedAnswerList, super.key});

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('@todo'),
          const SizedBox(
            height: 32,
          ),
          const Text('@todo'),
          const SizedBox(
            height: 32,
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Todo'),
          )
        ],
      ),
    );
  }
}
