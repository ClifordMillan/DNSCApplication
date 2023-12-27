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
    "How do you declare a variable in JavaScript?",
    [
      Answer("new variable x;", false),
      Answer("var x;", true),
      Answer("variable x;", false),
      Answer("let x;", false),
    ],
  ));

  list.add(Question(
    "What is the purpose of the addEventListener method in JavaScript?",
    [
      Answer("To create a new event", false),
      Answer("To remove an event", false),
      Answer("To handle events by attaching a function to an event", true),
      Answer("To check if an event is present", false),
    ],
  ));

  list.add(Question(
    "What is the difference between null and undefined in JavaScript?",
    [
      Answer("They are interchangeable", false),
      Answer("null is an assigned value that represents no value or no object,", true),
      Answer("undefined is an assigned value that represents no value or no object,", false),
      Answer("Both null and undefined represent the absence of value", false),
    ],
  ));

  list.add(Question(
    "What is the purpose of the this keyword in JavaScript?",
    [
      Answer("It refers to the current file", false),
      Answer("It refers to the current function", false),
      Answer("It refers to the current object;", false),
      Answer("It refers to the previous object", true),
    ],
  ));

  list.add(Question(
    "Which of the following is used to loop through an array in JavaScript?",
    [
      Answer("for-in loop", true),
      Answer("while loop", false),
      Answer("for-each loop", false),
      Answer("do-while loop", false),
    ],
  ));


  return list;
}