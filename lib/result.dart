import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_summary.dart';

class Result extends StatelessWidget {
  const Result(this.selectedAnswers, this.restart, {super.key});

  final List<String> selectedAnswers;
  final void Function() restart;

  List<Map<String, Object>> get _summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    int numOfCorrectAns = _summaryData
        .where(
            (element) => (element['user_answer'] == element['correct_answer']))
        .length;

/*
    for (var Element in summaryData) {
      if (Element['user_answer'] == Element['correct_answer']) {
        numOfCorrectAns++;
      }
    }
*/

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      //! for scrolling
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'You answered $numOfCorrectAns out of ${questions.length} questions correctly',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w900,
              fontSize: 21,
              color: const Color.fromARGB(255, 58, 136, 61),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ResultSummary(_summaryData),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
            onPressed: restart,
            label: const Text('Restart Quiz'),
            icon: const Icon(Icons.restart_alt),
          ),
        ],
      ),
    );
  }
}
