import 'package:flutter/material.dart';

import 'package:flutter_quiz_app/data/quiz_questions.dart';
import 'package:flutter_quiz_app/question_screen.dart';
import 'package:flutter_quiz_app/results_screen.dart';
import 'package:flutter_quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  String activeScreen = 'START_SCREEN';
  final List<String> selectedAnswerList = [];

  void onStartQuiz() {
    setState(() {
      activeScreen = 'QUESTION_SCREEN';
    });
  }

  void onSelectAnswer(String selectedAnswer) {
    selectedAnswerList.add(selectedAnswer);

    if (selectedAnswerList.length == quizQuestions.length) {
      setState(() {
        activeScreen = 'RESULTS_SCREEN';
      });
    }
  }

  void onRestartQuiz() {
    setState(() {
      selectedAnswerList.clear();
      activeScreen = 'QUESTION_SCREEN';
    });
  }

  @override
  Widget build(context) {
    Widget? screenWidget;

    switch (activeScreen) {
      case 'START_SCREEN':
        screenWidget = StartScreen(onStartQuiz);
        break;
      case 'QUESTION_SCREEN':
        screenWidget = QuestionScreen(onSelectAnswer);
        break;
      case 'RESULTS_SCREEN':
        screenWidget = ResultsScreen(
          selectedAnswerList: selectedAnswerList,
          onRestartQuiz: onRestartQuiz,
        );
        break;
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.deepPurple,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
