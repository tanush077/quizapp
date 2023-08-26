class Ques {
  Ques(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffled() {
    final shuffled = List.of(answers);
    shuffled.shuffle();
    return shuffled;
  }
}
