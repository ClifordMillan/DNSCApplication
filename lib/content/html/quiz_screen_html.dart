
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
    "What does HTML stand for?",
    [
      Answer("Hypertext Markup Language", true),
      Answer("High-Level Text Manipulation Language", false),
      Answer("Hyperlink and Text Markup Language", false),
      Answer("Home Tool Markup Language", false),
    ],
  ));

  list.add(Question(
    "Which HTML tag is used for creating hyperlinks?",
    [
      Answer("<a>", true),
      Answer("<link>", false),
      Answer("<href>", false),
      Answer("<hyperlink>", false),
    ],
  ));

  list.add(Question(
    "What does the acronym CSS stand for in web development?",
    [
      Answer("Counter Style Sheet", false),
      Answer("Colorful Style Sheet", false),
      Answer("Cascading Style Sheet", true),
      Answer("Computer Style Sheet", false),
    ],
  ));

  list.add(Question(
    "In HTML, which tag is used for creating an ordered list?",
    [
      Answer("<ul>", false),
      Answer("<ol>", true),
      Answer("<li>", false),
      Answer("<dl>", false),
    ],
  ));

  list.add(Question(
    "What is the purpose of the HTML <meta> tag?",
    [
      Answer("Defines a paragraph", false),
      Answer("Specifies a header for a document", false),
      Answer("Defines metadata about an HTML document", true),
      Answer("Creates a line break", false),
    ],
  ));

  return list;
}