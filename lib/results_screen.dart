import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('@todo'),
          const SizedBox(
            height: 32,
          ),
          const Text('@todo'),
          const SizedBox(
            height: 32,
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Todo'),
          )
        ],
      ),
    );
  }
}
