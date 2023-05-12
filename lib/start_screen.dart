import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logo.png',
            color: const Color.fromARGB(204, 255, 255, 255),
            width: 250,
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'React Quiz',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          OutlinedButton.icon(
            icon: const Icon(
              Icons.arrow_right,
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
