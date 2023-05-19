import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  final List<Map<String, Object>> summary;

  const Summary({required this.summary, super.key});

  @override
  Widget build(context) {
    return Column(
      children: summary
          .map(
            (entry) => Row(
              children: [
                Text(
                  ((entry['index'] as int) + 1).toString(),
                ),
                Column(
                  children: [
                    Text(entry['question'] as String),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(entry['correct_answer'] as String),
                    Text(entry['selected_answer'] as String),
                  ],
                )
              ],
            ),
          )
          .toList(),
    );
  }
}
