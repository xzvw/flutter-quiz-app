class QuizQuestion {
  final String question;
  final List<String> answerList; // the first answer is always the correct one

  const QuizQuestion({required this.question, required this.answerList});

  List<String> get shuffledAnswerList {
    final listCopy = List.of(answerList);
    listCopy.shuffle();
    return listCopy;
  }
}
