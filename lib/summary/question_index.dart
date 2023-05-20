import 'package:flutter/material.dart';

class QuestionIndex extends StatelessWidget {
  final size = 32.0;

  final int index;
  final bool isCorrect;

  const QuestionIndex({
    required this.index,
    required this.isCorrect,
    super.key,
  });

  @override
  Widget build(context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: isCorrect ? Colors.green : Colors.red,
      ),
      height: size,
      width: size,
      child: Text(
        index.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
