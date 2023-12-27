// ignore_for_file: use_build_context_synchronously

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:flutterproject/auth/auth_service.dart';
import 'package:flutterproject/auth/home_screen.dart';
import 'package:flutterproject/auth/reset_password.dart';
import 'package:flutterproject/auth/signup_screen.dart';
import 'package:flutterproject/color_utils.dart';
import 'package:flutterproject/reusable_widgets/reusable_widget.dart';
import 'package:flutterproject/reusable_widgets/square_tile.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/dnsc_image.png"),
                const SizedBox(
                  height: 15,
                ),
                reusableTextField("Enter Username", Icons.person_outlined,
                    false, _emailTextController),
                const SizedBox(
                  height: 15,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 3,
                ),
                forgetPassword(context),
                firebasepButton(context, "Login", () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                    String errorMessage =
                        "Login failed. Please check your email and password.";
                    if (error is FirebaseAuthException) {
                      if (error.code == 'user-not-found') {
                        errorMessage =
                            "Email not registered. Please sign up first.";
                      } else if (error.code == 'wrong-password') {
                        errorMessage = "Incorrect password. Please try again.";
                      }
                    }
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.ERROR,
                      animType: AnimType.TOPSLIDE,
                      title: 'Login Failed',
                      desc: errorMessage,
                      btnOkOnPress: () {},
                    ).show();
                  });
                }),
                signUpOption(),
                login_fb(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(
                      onTap: () async {
                        try {
                          await AuthService().signInWithGoogle();

                          // Show AwesomeDialog on successful Google sign-in

                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.SUCCES,
                            // ignore: deprecated_member_use
                            animType: AnimType.SCALE,
                            title: 'Google Login Successful',
                            desc:
                                'You have successfully logged in with Google!',
                            btnOkOnPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            },
                          ).show();
                        } catch (error) {
                          print("Unexpected error: $error");
                        }
                      },
                      imagePath: 'assets/images/google.png',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    SquareTile(
                        onTap: () async {
                        _facebookLogin();
          
                        },
                        imagePath: 'assets/images/fb.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Row login_fb() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Or Continue With?",
            style: TextStyle(color: Colors.white70)),
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.white70),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResetPassword())),
      ),
    );
  }

  Future logout() async {
    await FirebaseAuth.instance.signOut();
    AwesomeDialog(
      context: context,
      dialogType: DialogType.WARNING,
      animType: AnimType.SCALE,
      title: 'Logout',
      desc: 'You have been logged out successfully!',
      btnOkOnPress: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Log Out')));
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SignInScreen()),
        );
      },
    ).show();
  }

  _facebookLogin() async {
    // Create an instance of FacebookLogin
    final fb = FacebookLogin();
    // Log in
    final res = await fb.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);
    
// Check result status
    switch (res.status) {
      case FacebookLoginStatus.success:
        final FacebookAccessToken? accessToken = res.accessToken;
        final profile = await fb.getUserProfile();
        final imageUrl = await fb.getProfileImageUrl(width: 100);

        print('Access token: ${accessToken?.token}');
        print('Hello, ${profile?.name}! You ID: ${profile?.userId}');
        print('Your profile image: $imageUrl');
              Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));

        // Get email (since we request email permission)
        final email = await fb.getUserEmail();
        // But user can decline permission
        if (email != null) print('And your email is $email');
  

        break;
      case FacebookLoginStatus.cancel:
        // User cancel log in
        break;
      case FacebookLoginStatus.error:
        // Log in failed
        print('Error while log in: ${res.error}');
        break;
    }
  }
}
