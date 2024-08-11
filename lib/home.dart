import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            height: 200,
            color: Colors.amber.withOpacity(0.65).withBlue(
                100), //Logo will be amber + blue color as the image has no specific color
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Learn Flutter!',
            style: GoogleFonts.lato(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 167, 166, 166),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                side: const BorderSide(width: 3, color: Colors.red)),
            onPressed: () {
              switchScreen();
              log('Quiz Started!');
            },
            icon: const Icon(Icons.play_arrow),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                // color: Color.fromARGB(255, 255, 0, 0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
