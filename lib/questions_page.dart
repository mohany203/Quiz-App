import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'data/questions.dart';

class Questions extends StatefulWidget {
  const Questions(this.onSelectedAnswer, {super.key});

  final void Function(String) onSelectedAnswer;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;

  void answerQuestion(String ans) {
    //.... store user answer
    widget
        .onSelectedAnswer(ans); //widget.fn coz its initialised in a diff class
    setState(() {
      //currentQuestionIndex = currentQuestionIndex + 1;
      //currentQuestionIndex +=1;
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQ = questions[currentQuestionIndex];

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQ.text,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                fontSize: 21, decoration: TextDecoration.underline),
          ),
          const SizedBox(
            height: 30,
          ),

//[ [1, 2, 3, 4] , 5] => [1, 2, 3, 4, 5] this is done by the separate operator
          ...currentQ.shuffledAnswers.map(
            (item) {
              // the ... means separate operator
              return Container(
                margin: const EdgeInsets.all(5),
                child: AnswerButton(
                  answerText: item,
                  onPressed: () => answerQuestion(item),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
