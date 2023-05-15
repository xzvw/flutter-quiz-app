import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  var currentQuizQuestionIndex = 0;

  void answerQuestion() {
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
            ...quizQuestion.getShuffledAnswerList().map((answer) {
              return AnswerButton(
                text: answer,
                onPressed: answerQuestion,
              );
            }),
          ],
        ),
      ),
    );
  }
}
