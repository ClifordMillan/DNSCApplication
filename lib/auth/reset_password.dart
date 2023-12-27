import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutterproject/color_utils.dart';
import 'package:flutterproject/reusable_widgets/reusable_widget.dart';
import 'package:flutterproject/screens/constants.dart';


class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  // final formKey = GlobalKey<FormState>();

  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 253, 253),
          ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Reset Password",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: kTextWhiteColor
               
          ),
        ),
      
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
           hexStringToColor("2E7D32"),
          hexStringToColor("2E7D32"),
          hexStringToColor("2E7D32"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                // logoSignup("assets/images/dnsc_image.png"),
                const SizedBox(
                  height: 20,
                ),

                reusableTextField("Enter Emai", Icons.lock_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                firebasepButton(context, "Reset Password", () {
                  FirebaseAuth.instance
                      .sendPasswordResetEmail(email: _emailTextController.text)
                      .then((value) {
                    // Show AwesomeDialog on successful password reset email
                    AwesomeDialog(
                      context: context,
                     dialogType: DialogType.SUCCES,
                      animType: AnimType.SCALE,
                      title: 'Reset Password',
                      desc:
                          'Password reset email has been sent to ${_emailTextController.text}. Check your email for instructions.',
                      btnOkOnPress: () {
                        Navigator.of(context)
                            .pop(); // Close the reset password screen
                      },
                    )..show();
                  }).catchError((error) {
                    print("Error sending password reset email: $error");
                    // Show AwesomeDialog for password reset error
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.ERROR,
                      animType: AnimType.SCALE,
                      title: 'Reset Password Failed',
                      desc:
                          'Error sending password reset email. Please try again.',
                      btnOkOnPress: () {},
                    )..show();
                  });
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
