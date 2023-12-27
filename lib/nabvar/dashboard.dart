
import 'package:flutter/material.dart';
// import 'package:mobile_app/content/question_model.dart';
import 'package:flutterproject/content/quiz_dashboard.dart';
import 'package:flutterproject/reusable_widgets/student_data.dart';
import 'package:flutterproject/screens/assignment_screen/assignment_screen.dart';
import 'package:flutterproject/screens/constants.dart';
import 'package:flutterproject/screens/my_profile.dart';
import 'package:flutterproject/nabvar/event.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     
      // backgroundColor: Color(0xFF345FB4),
      backgroundColor: const Color.fromRGBO(6, 138, 17, 1),
  
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StudentName(
                          studentName: 'Cliford Millan',
                        ),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        //
                        StudentClass(studentClass: 'BSIT-3B | ID-01790'),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        StudentYear(studentYear: '2023-2024'),
                      ],
                    ),
                    const SizedBox(
                      height: kDefaultPadding / 6,
                    ),
                    StudentPicture(
                        picAddress: 'assets/images/profile.png',
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyProfileScreen()),
                          );
                        },
                     ),
                  ],
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentDataCard(
                        title: 'Attendance', value: '90.02%', onPress: () {
                          
                        }),
                    StudentDataCard(
                        title: 'Fees', value: '600\$', 
                        onPress: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const),
                          // );
                        },
                        
                        ),
                  ],
                )
              ],
            ),
          ),

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const QuizDashboard()),
                          );
                        },
                          icon: 'assets/images/quiz.png',
                          title: 'Take Quiz',
                        ),
                        HomeCard(
                     onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AssignmentScreen()),
                          );
                        },
                          icon: 'assets/images/assignment.png',
                          title: 'Assignment',
                        ),
                      ],
                    ),
            
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/images/notepad.png',
                          title: 'Result',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/images/archive.png',
                          title: 'DateSheet',
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
      onTap: onPress,
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
