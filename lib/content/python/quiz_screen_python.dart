
class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}



List<Question> getQuestions() {
  List<Question> list = [];

  list.add(Question(
    "What is Python?",
    [
      Answer("A high-level programming language", true),
      Answer("A database management system", false),
      Answer("An operating system", false),
      Answer("A web browser", false),
    ],
  ));

  list.add(Question(
    "How do you declare a variable in Python?",
    [
      Answer("var x", false),
      Answer("x = variable", false),
      Answer("x := 5", false),
      Answer("x = 5", true),
    ],
  ));

  list.add(Question(
    "What is the purpose of the `print()` function in Python?",
    [
      Answer("To read input from the user", false),
      Answer("To display text on the screen", true),
      Answer("To perform mathematical operations", false),
      Answer("To define a function", false),
    ],
  ));

  list.add(Question(
    "Which statement is used for decision-making in Python?",
    [
      Answer("for", false),
      Answer("switch", false),
      Answer("if", true),
      Answer("select", false),
    ],
  ));

  list.add(Question(
    "What is the output of the following code: `print(3 * 'abc')`?",
    [
      Answer("abc", false),
      Answer("abcabc", false),
      Answer("abcabcabc", true),
      Answer("333", false),
    ],
  ));

  return list;
}
