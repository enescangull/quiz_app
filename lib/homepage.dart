import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 275,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Learn flutter the fun way!',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
            ),
            child: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
