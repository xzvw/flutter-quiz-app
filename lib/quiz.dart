import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question_screen.dart';
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

  void onStartQuiz() {
    setState(() {
      activeScreen = 'QUESTION_SCREEN';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = activeScreen == 'START_SCREEN'
        ? StartScreen(onStartQuiz)
        : const QuestionScreen();

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
