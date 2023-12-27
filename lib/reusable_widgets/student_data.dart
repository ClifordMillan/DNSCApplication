// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutterproject/screens/constants.dart';

class StudentName extends StatefulWidget {
  const StudentName({Key? key, required this.studentName}) : super(key: key);

  final String studentName;

  @override
  State<StudentName> createState() => _StudentNameState();
}

class _StudentNameState extends State<StudentName> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Hi ',
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w200,
                fontSize: 22.0,
                color: kTextWhiteColor,
              ),
        ),
        Text(
          widget.studentName, // Reference widget.studentName here
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w500,
                color: kTextWhiteColor,
                fontSize: 22.0,
              ),
        ),
      ],
    );
  }
}

class StudentClass extends StatefulWidget {
  const StudentClass({Key? key, required this.studentClass}) : super(key: key);

  final String studentClass;

  @override
  State<StudentClass> createState() => _StudentClassState();
}

class _StudentClassState extends State<StudentClass> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.studentClass, // Reference widget.studentClass here
      // ignore: deprecated_member_use
      style: Theme.of(context).textTheme.subtitle2!.copyWith(
            fontSize: 14.0,
            color: kTextWhiteColor,
          ),
    );
  }
}

class StudentYear extends StatefulWidget {
  const StudentYear({Key? key, required this.studentYear}) : super(key: key);

  final String studentYear;

  @override
  State<StudentYear> createState() => _StudentYearState();
}

class _StudentYearState extends State<StudentYear> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 20,
      decoration: BoxDecoration(
        color: kOtherColor,
        borderRadius: BorderRadius.circular(kDefaultPadding),
      ),
      child: Center(
        child: Text(
          widget.studentYear, // Reference widget.studentYear here
          style: const TextStyle(
            fontSize: 12.0,
            color: kTextBlackColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class StudentPicture extends StatefulWidget {
  const StudentPicture({
    Key? key,
    required this.picAddress,
    required this.onPress,
  }) : super(key: key);

  final String picAddress;
  final VoidCallback onPress;

  @override
  State<StudentPicture> createState() => _StudentPictureState();
}

class _StudentPictureState extends State<StudentPicture> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress, // Use widget.onPress instead of an empty function
      child: CircleAvatar(
        minRadius: 50.0,
        maxRadius: 50.0,
        backgroundColor: kSecondaryColor,
        backgroundImage:
            AssetImage(widget.picAddress), // Reference widget.picAddress here
      ),
    );
  }
}




class StudentDataCard extends StatefulWidget {
  const StudentDataCard({
    Key? key,
    required this.title,
    required this.value,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final String value;
  final VoidCallback onPress;

  @override
  State<StudentDataCard> createState() => _StudentDataCardState();
}

class _StudentDataCardState extends State<StudentDataCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress, // Use widget.onPress instead of onPress
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 9,
        decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              widget.title, // Reference widget.title here
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 16.0,
                    color: kTextBlackColor,
                    fontWeight: FontWeight.w800,
                  ),
            ),
            Text(
              widget.value, // Reference widget.value here
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontSize: 25.0,
                    color: kTextBlackColor,
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}