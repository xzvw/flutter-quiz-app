import 'package:flutter/material.dart';

import 'package:flutter_quiz_app/summary/summary_item.dart';

class Summary extends StatelessWidget {
  final List<Map<String, Object>> summary;

  const Summary({required this.summary, super.key});

  @override
  Widget build(context) {
    return SizedBox(
      height: 480,
      child: SingleChildScrollView(
        child: Column(
          children: summary
              .map(
                (item) => SummaryItem(item),
              )
              .toList(),
        ),
      ),
    );
  }
}
