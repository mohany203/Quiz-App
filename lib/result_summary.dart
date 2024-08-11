import 'package:flutter/material.dart';

class ResultSummary extends StatelessWidget {
  const ResultSummary(this.summaryData, {super.key});

final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: [
                        ...summaryData.map(
                  (e) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor:
                             e['user_answer']==e['correct_answer']?Colors.green:Colors.red,
                            child: Text(
                                (((e['question_index']) as int) + 1).toString()),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e['question'].toString(),
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Text(
                                  e['user_answer'].toString(),
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    decoration: TextDecoration.none,
                                    fontStyle: FontStyle.italic,
                                    color:  Colors.black,
                                  ),
                                ),
                                Text(
                                  e['correct_answer'].toString(),
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    decoration: TextDecoration.underline,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
        
          ],
        ),
      ),
    );
  }
}
