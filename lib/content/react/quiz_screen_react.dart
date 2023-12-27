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
    "In React, what is JSX?",
    [
      Answer("JavaScript XML" ,true ),
      Answer("JavaScript Extended", false),
      Answer(" XML Syntax Extension", false),
      Answer("XML Script", false),
    ],
  ));

  list.add(Question(
    "What is the purpose of state in React?",
    [
      Answer("To store and manage global application data", false),
      Answer("To handle HTTP requests", false),
      Answer("To store and manage local component data", true),
      Answer("To manage styling and layout", false),
    ],
  ));

  list.add(Question(
    "What is the significance of the key prop in React?",
    [
      Answer(" It is used for encryption purposes", false),
      Answer("It is used to uniquely identify elements in a list", true),
      Answer("It is required for all React components", false),
      Answer("It defines the access level for components", false),
    ],
  ));

  list.add(Question(
    "What is the purpose of the componentDidMount lifecycle method in React?",
    [
      Answer("It is called when a component is about to be removed from the DOM", false),
      Answer("It is used to update the component's state", false),
      Answer("It is called before a component is rendered to the DOM", false),
      Answer("It is called after a component has been rendered to the DOM", true),
    ],
  ));

  list.add(Question(
    "What is the function of useState in React?",
    [
      Answer("It is used to create functional components", true),
      Answer("It is used to create functional components", false),
      Answer("It is used to define the structure of a class component", false),
      Answer("It is used to define the structure of a class component", false),
    ],
  ));


  return list;
}