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
  //ADD questions and answer here

  list.add(Question(
    "Which of the following is a valid declaration of a Java array?",
    [
      Answer("int[] arr = new int();", false),
      Answer("int arr[] = new int[5];", true),
      Answer("int arr[5];", false),
      Answer("array arr[] = new array();", false),
    ],
  ));

  list.add(Question(
    "What is the main purpose of the finally block in a Java try-catch-finally statement?",
    [
      Answer("To handle exceptions", false),
      Answer("To execute code irrespective of whether an exception is thrown or not", true),
      Answer("To specify conditions", false),
      Answer("To define custom exceptions", false),
    ],
  ));

  list.add(Question(
    "What is the purpose of the unset() function in PHP?",
    [
      Answer("constant", false),
      Answer("const", false),
      Answer("final", true),
      Answer("define", false),
    ],
  ));

  list.add(Question(
    "What is the difference between == and equals() in Java for comparing strings?",
    [
      Answer("They are interchangeable, and there is no difference", false),
      Answer("== compares the references, while equals() compares the content", true),
      Answer("== compares the content, while equals() compares the references", false),
      Answer("Both == and equals() compare the content of strings", false),
    ],
  ));

  list.add(Question(
    "What is the purpose of the super keyword in Java?",
    [
      Answer("To call the superclass constructor", false),
      Answer("To access the static variables of the superclass", false),
      Answer("To invoke the superclass method", false),
      Answer(" All of the above", true),
    ],
  ));


  return list;
}