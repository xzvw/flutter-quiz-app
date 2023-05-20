import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_quiz_app/answer_button.dart';
import 'package:flutter_quiz_app/data/quiz_questions.dart';

class QuestionScreen extends StatefulWidget {
  final void Function(String) onSelectAnswer;

  const QuestionScreen(this.onSelectAnswer, {super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuizQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      currentQuizQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final quizQuestion = quizQuestions[currentQuizQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quizQuestion.question,
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
            ...quizQuestion
                .shuffledAnswerList
                .asMap()
                .entries
                .map((entry) {
              final index = entry.key;
              final answer = entry.value;

              return [
                if (index > 0)
                  const SizedBox(
                    height: 12,
                  ),
                AnswerButton(
                  text: answer,
                  onPressed: () {
                    answerQuestion(answer);
                  },
                )
              ];
            }).expand((list) => list)
          ],
        ),
      ),
    );
  }
}
