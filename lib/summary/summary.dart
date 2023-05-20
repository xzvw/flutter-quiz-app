import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  final List<Map<String, Object>> summary;

  const Summary({required this.summary, super.key});

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summary
              .map(
                (entry) => Row(
                  children: [
                    Text(
                      ((entry['index'] as int) + 1).toString(),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          entry['question'] as String,
                          style: const TextStyle(
                            fontSize: 24,
                          ),
                        ),
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
        ),
      ),
    );
  }
}
