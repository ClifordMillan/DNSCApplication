
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  signInWithGoogle() async {

      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication gAuth = await gUser!.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );
     return await FirebaseAuth.instance.signInWithCredential(credential);


    }
}

void showSignInErrorDialog(BuildContext context) {
  AwesomeDialog(
    context: context, // Make sure to use the correct context
    // ignore: deprecated_member_use
    dialogType: DialogType.ERROR,
    // ignore: deprecated_member_use
    animType: AnimType.TOPSLIDE,
    title: 'Error',
    desc: 'Failed to sign in with Google. Please try again.',
    btnOkOnPress: () {},
  ).show();
}