// ignore_for_file: prefer_const_constructors, deprecated_member_use, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutterproject/screens/constants.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF345FB4),
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white, // Change the text color to white
            fontSize: 18.0,
          ),
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true, // Center the title
        leading: const BackButton(
          color: Colors.white,
        ),
        actions: [
          InkWell(
            onTap: () {
              // Handle onTap action
            },
            child: Container(
              padding: EdgeInsets.only(right: kDefaultPadding / 2),
              child: const Row(
                children: [
                  Icon(Icons.report_gmailerrorred_outlined),
                  kHalfWidthSizedBox,
                  Text(
                    'Report',
                    style: TextStyle(
                      color: kTextWhiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ), // Add the closing parenthesis for InkWell
        ],
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
                      // ignore: deprecated_member_use
                      Text(
                        'Cliford Millan',
                        style: TextStyle(color: kTextWhiteColor,fontSize: 18) ),
                      // ignore: deprecated_member_use
                      Text(
                        'BSIT-3B | ID-01790 ',
                        style: TextStyle(color: kTextWhiteColor,fontSize: 14.0) ,
                      ),
                    ],
                  )
                ],
              ),
            ),
            sizedBox,
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
                title: 'Course', value: 'Bachelor of Science Information Technology'),
            const ProfileDetailColumn(
                title: 'Address', value: 'Carmen Davao del Norte'),
          ],
        ),
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
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kTextLightColor,
                      fontSize: 15.0,
                    ),
              ),
              kHalfSizedBox,
              Text(
                widget.value, // Reference widget.value here
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
