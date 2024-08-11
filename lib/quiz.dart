import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/home.dart';
import 'package:quiz_app/questions_page.dart';
import 'package:quiz_app/result.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

//! Screen Switching
//var activeScreen = const Home();   not preferrable to be a var as its not of type home as detected by flutter but its  actually a widget
  Widget? activeScreen; // widget or null

  void chooseAnswer(String ans) {
    dev.log(ans);
    selectedAnswers.add(ans);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = Result(selectedAnswers, restart);
      });
    }
    dev.log(selectedAnswers.toString());
  }

  void restart() {
    setState(() {
      selectedAnswers = [];
      activeScreen = Home(switchScreen);
    });
  }

  @override
  void initState() {
    super.initState();
    activeScreen = Home(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = Questions(chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Color.fromARGB(255, 112, 54, 124),
                Color.fromARGB(255, 46, 58, 117),
              ],
              center: Alignment.topCenter,
              radius: 1,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
