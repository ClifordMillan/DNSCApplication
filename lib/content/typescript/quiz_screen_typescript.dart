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
    "What is TypeScript?",
    [
      Answer("A superset of JavaScript", true),
      Answer("A server-side scripting language", false),
      Answer("A database management system", false),
      Answer("A markup language for web development", false),
    ],
  ));

  list.add(Question(
    "Which keyword is used to declare a variable in TypeScript?",
    [
      Answer("var", false),
      Answer("let", true),
      Answer("const", false),
      Answer("variable", false),
    ],
  ));

  list.add(Question(
    "What is the purpose of the `interface` keyword in TypeScript?",
    [
      Answer("To define a new class", false),
      Answer("To declare a variable", false),
      Answer("To create an instance of a class", false),
      Answer("To define a contract for an object", true),
    ],
  ));

  list.add(Question(
    "What is the TypeScript compiler file extension?",
    [
      Answer(".js", false),
      Answer(".tsc", false),
      Answer(".typescript", false),
      Answer(".ts", true),
    ],
  ));

  list.add(Question(
    "How do you define a function in TypeScript?",
    [
      Answer("function myFunction() {}", false),
      Answer("def myFunction(): void {}", false),
      Answer("const myFunction = () => {}", false),
      Answer("All of the above", true),
    ],
  ));

  return list;
}
