import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_quiz_app/summary/question_index.dart';

class SummaryItem extends StatelessWidget {
  final Map<String, Object> item;

  const SummaryItem(this.item, {super.key});

  @override
  Widget build(context) {
    final isCorrect = item['selected_answer'] == item['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIndex(
            index: (item['index'] as int) + 1,
            isCorrect: isCorrect,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['question'] as String,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Your answer: ${item['selected_answer'] as String}',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Correct answer: ${item['correct_answer'] as String}',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
