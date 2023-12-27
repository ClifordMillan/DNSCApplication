// ignore_for_file: file_names, deprecated_member_use, duplicate_ignore

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/auth/signin_screen.dart';

import 'package:flutterproject/utils/color_utils.dart';
import 'package:flutterproject/screens/constants.dart';
import 'package:flutterproject/nabvar/event.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 253, 253), //change your color here
        ),
        centerTitle: true,
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromRGBO(6, 138, 17, 1),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(
                6, 138, 17, 1), // Set the background color here
            gradient: LinearGradient(
              colors: [
                hexStringToColor("43A047"),
                hexStringToColor("FAFAFA"),
                hexStringToColor("FAFAFA"),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 2, 129,
                      7), // Set the background color for the DrawerHeader
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      maxRadius: 32,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                      // child: Text(
                      //   FirebaseAuth.instance.currentUser!.email
                      //       .toString()[0]
                      //       .toUpperCase(),
                      // ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text( "Millan Cliford@dnsc.edu.ph",
                     style:TextStyle(color: kTextWhiteColor),
                      // FirebaseAuth.instance.currentUser!.email.toString()
                      ),
                  ],
                ),
              ),
           
              ListTile(
                onTap: () {
                  showLogoutConfirmation();
                },
                leading: const Icon(Icons.logout_outlined),
                title: const Text("Logout"),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(kDefaultPadding * 2),
                  bottomLeft: Radius.circular(kDefaultPadding * 2),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 50.0,
                    minRadius: 50.0,
                    backgroundColor: kSecondaryColor,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  kWidthSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Cliford Millan',
                        style: TextStyle(color: kTextWhiteColor, fontSize: 18),
                      ),
                      Text(
                        'BSIT-3B | ID-01790 ',
                        style:
                            TextStyle(color: kTextWhiteColor, fontSize: 14.0),
                      ),
                    ],
                  )
                ],
              ),
            ),
            kHalfSizedBox,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetaileRow(
                    title: "Registration Number", value: '09971751065'),
                ProfileDetaileRow(title: "Academic Year", value: '2020-2021'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetaileRow(title: "Admission Class", value: 'BSIT-3B'),
                ProfileDetaileRow(title: "School-ID", value: '01790'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetaileRow(
                    title: "Date of Admission", value: '4 July 2020'),
                ProfileDetaileRow(
                    title: "Date of Birth", value: '11 June 2002'),
              ],
            ),
            const ProfileDetailColumn(
                title: 'Email', value: 'Millan.Cliford@dnsc.edu.ph'),
            const ProfileDetailColumn(
                title: 'Course',
                value: 'Bachelor of Science Information Technology'),
            const ProfileDetailColumn(
                title: 'Address', value: 'Carmen Davao del Norte'),
          ],
        ),
      ),
    );
  }

  // Future logout() async {
  //   await FirebaseAuth.instance.signOut();
  // }

  void showLogoutConfirmation() {
    FirebaseAuth.instance.signOut();
    AwesomeDialog(
      context: context,
      // ignore: deprecated_member_use
      dialogType: DialogType.WARNING,
      // ignore: deprecated_member_use
      animType: AnimType.SCALE,
      title: 'Logout',
      desc: 'Are you sure you want to log out?',
      btnCancelOnPress: () {},
      btnOkOnPress: () {
        // User confirmed, log out
        // logout();
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Logged Out')));
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SignInScreen()),
        );
      },
    ).show();
  }
}

class ProfileDetailColumn extends StatefulWidget {
  const ProfileDetailColumn({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  State<ProfileDetailColumn> createState() => _ProfileDetailColumnState();
}

class _ProfileDetailColumnState extends State<ProfileDetailColumn> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title, // Reference widget.title here
                // ignore: deprecated_member_use
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kTextLightColor,
                      fontSize: 15.0,
                    ),
              ),
              kHalfSizedBox,
              Text(
                widget.value, // Reference widget.value here
                // ignore: deprecated_member_use
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kTextBlackColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              kHalfSizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: const Divider(
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.lock_outline,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}

class ProfileDetaileRow extends StatefulWidget {
  const ProfileDetaileRow({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  State<ProfileDetaileRow> createState() => _ProfileDetaileRowState();
}

class _ProfileDetaileRowState extends State<ProfileDetaileRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: kDefaultPadding / 4,
        left: kDefaultPadding / 4,
        top: kDefaultPadding / 2,
      ),
      width: MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title, // Reference widget.title here
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kTextLightColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                    ),
              ),
              kHalfSizedBox,
              Text(
                widget.value, // Reference widget.value here
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kTextBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                    ),
              ),
              kHalfSizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: const Divider(
                  thickness: 1.0,
                ),
              )
            ],
          ),
          const Icon(
            Icons.lock_outline,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}
