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
    "What does PHP stand for??",
    [
      Answer("Personal Home Page", false),
      Answer("Preprocessor Hypertext", false),
      Answer("Public Hosting Platform", false),
      Answer(" Programming Hyperlink Page", true),
    ],
  ));

  list.add(Question(
    "Which of the following functions is used to connect to a MySQL database in PHP?",
    [
      Answer("mysqli_query()", false),
      Answer("mysql_connect()", false),
      Answer("odo_connect()", false),
      Answer("mysqli_connect()", true),
    ],
  ));

  list.add(Question(
    "What is the purpose of the unset() function in PHP?",
    [
      Answer("Deletes a file", false),
      Answer("Destroys a session", false),
      Answer("Removes a variable", true),
      Answer("Unsets an array", false),
    ],
  ));

  list.add(Question(
    "Which of the following statements is used to redirect a user to another page in PHP?",
    [
      Answer("header(Location: new_page.php);", true),
      Answer("redirect(new_page.php);", false),
      Answer("go_to(new_page.php);", false),
      Answer("move_page(new_page.php);", false),
    ],
  ));

  list.add(Question(
    "What is the purpose of the strtotime() function in PHP?",
    [
      Answer("Parses a string representing a date and returns a Unix timestamp", true),
      Answer("Converts a timestamp to a string", false),
      Answer("Calculates the execution time of a script", false),
      Answer("Converts a string to a date", false),
    ],
  ));


  return list;
}