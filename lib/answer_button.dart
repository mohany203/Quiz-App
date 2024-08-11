import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required, required this.answerText, required this.onPressed});

  final String answerText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          foregroundColor: const Color.fromARGB(255, 113, 119, 35),
          //padding: const EdgeInsets.all(20),
          //padding: const EdgeInsets.fromLTRB(40, 30, 40, 30),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          //fixedSize: const Size(500, 70),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(
        answerText,
        style: const TextStyle(fontSize: 15),
        textAlign: TextAlign.center,
      ),
    );
  }
}
