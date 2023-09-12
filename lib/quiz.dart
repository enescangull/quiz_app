import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/homepage.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answers) {
    selectedAnswers.add(answers);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomePage(switchScreen);
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 16, 175, 238),
              Color.fromARGB(255, 9, 233, 233),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: screenWidget,
        ),
      ),
    );
  }
}
