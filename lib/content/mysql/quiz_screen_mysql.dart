
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

  // Your existing PHP-related questions...

  list.add(Question(
    "What does SQL stand for?",
    [
      Answer("Structured Language", false),
      Answer("Sequential Query Language", false),
      Answer("Structured Query Language", true),
      Answer("Sequential Language", false),
    ],
  ));

  list.add(Question(
    "Which SQL clause is used to filter the results of a query?",
    [
      Answer("ORDER BY", false),
      Answer("GROUP BY", false),
      Answer("FILTER BY", false),
      Answer("WHERE", true),
    ],
  ));

  list.add(Question(
    "In MySQL, what is the purpose of the `SELECT` statement?",
    [
      Answer("To insert data into a table", false),
      Answer("To delete data from a table", false),
      Answer("To retrieve data from one or more tables", true),
      Answer("To update data in a table", false),
    ],
  ));

  list.add(Question(
    "What is the role of the `JOIN` clause in a MySQL query?",
    [
      Answer("To create a new table", false),
      Answer("To filter the results", false),
      Answer("To combine rows from two or more tables based on a related column", true),
      Answer("To sort the results", false),
    ],
  ));

  list.add(Question(
    "What is the purpose of the `PRIMARY KEY` constraint in MySQL?",
    [
      Answer("To ensure data integrity by enforcing uniqueness", true),
      Answer("To define a default value for a column", false),
      Answer("To allow null values in a column", false),
      Answer("To specify a foreign key relationship", false),
    ],
  ));

  return list;
}