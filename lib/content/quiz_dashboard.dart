import 'package:flutter/material.dart';

import 'package:flutterproject/content/html/question_model_html.dart';
import 'package:flutterproject/content/mysql/question_model_mysql.dart';
import 'package:flutterproject/content/python/question_model_python.dart';
import 'package:flutterproject/content/question_model.dart';
import 'package:flutterproject/content/java/question_model_java.dart';
import 'package:flutterproject/content/js/question_model_js.dart';
import 'package:flutterproject/content/react/question_model_react.dart';
import 'package:flutterproject/content/typescript/questions_model_typescript.dart';
import 'package:flutterproject/screens/constants.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class QuizDashboard extends StatefulWidget {
  const QuizDashboard({super.key});

  @override
  State<QuizDashboard> createState() => _QuizDashboardState();
}

class _QuizDashboardState extends State<QuizDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
         iconTheme: const IconThemeData(
    color: Color.fromARGB(255, 255, 253, 253), //change your color here
  ),
    centerTitle: true,
        title:  const Text(
          " Quiz ",
          
          style: TextStyle(
            color: Colors.white,
          ),
        
        ),
        backgroundColor: const Color.fromRGBO(6, 138, 17, 1),
      ),
      body: Column(
        children: [
          Container(),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  ),
                ),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                      const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuizScreen()),
                            );
                          },
                          icon: 'assets/images/testphp.png',
                          title: 'PHP Quiz',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuizScreenJava()),
                            );
                          },
                          icon: 'assets/images/java.png',
                          title: 'Java',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                         onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuizScreenJS()),
                            );
                          },
                          icon: 'assets/images/js.png',
                          title: 'Javascript',
                        ),
                        HomeCard(
                        onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuizScreenReact()),
                            );
                          },
                          icon: 'assets/images/library.png',
                          title: 'React',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                           onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuizScreenHTML()),
                            );
                          },
                          icon: 'assets/images/html.png',
                          title: 'HTML',
                        ),
                        HomeCard(
                           onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuizScreenMysql()),
                            );
                          },
                          icon: 'assets/images/sql-server.png',
                          title: 'MySql',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                           onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuizScreenPython()),
                            );
                          },
                          icon: 'assets/images/python.png',
                          title: 'Python',
                        ),
                        HomeCard(
                            onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuizScreenType()),
                            );
                          },
                          icon: 'assets/images/programming-language.png',
                          title: 'TypeScript',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.title});

  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Show an AwesomeDialog when the PHP Quiz card is tapped
        AwesomeDialog(
          context: context,
          // ignore: deprecated_member_use
          dialogType: DialogType.WARNING,
          // ignore: deprecated_member_use
          animType: AnimType.BOTTOMSLIDE,
          title: 'Confirmation',
          desc: 'Are you sure you want to take the Quiz?',
          btnCancelOnPress: () {},
          btnOkOnPress: () {
            // Navigate to the quiz screen when OK is pressed
            onPress();
          },
        ).show();
      },
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 40.0,
              width: 40.0,
              color: kOtherColor,
            ),
            Text(title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: kTextWhiteColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w500)),
            const SizedBox(
              height: kDefaultPadding / 3,
            )
          ],
        ),
      ),
    );
  }
}

