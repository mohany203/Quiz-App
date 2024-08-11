class QuizQuestions {
  
  const QuizQuestions(this.text,  this.answers);



  final String text;
  final List<String> answers; //Oroginal answer order where the correct answer is the 1st one

List<String> get shuffledAnswers { //shuffled answers for the view
  final shuffledList = List.of(answers);
  shuffledList.shuffle();
  return shuffledList;
}

}