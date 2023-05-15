import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer_button.dart';
import 'package:flutter_quiz_app/data/quiz_questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final quizQuestion = quizQuestions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            quizQuestion.question,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          ...quizQuestion.answerList.map((answer) {
            return AnswerButton(
              text: answer,
              onPressed: () {},
            );
          }),
        ],
      ),
    );
  }
}
