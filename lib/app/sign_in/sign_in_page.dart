import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/social_button.dart';
import 'package:time_tracker/services/auth.dart';

class SignInPage extends StatelessWidget {
  final void Function(User) onSignIn;
  final AuthBass auth;

  const SignInPage({@required this.onSignIn,@required this.auth});

  Future<void> _signInAnonymously() async {
    try {
      final user= await auth.signInAnonymously();

      onSignIn(user);

    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sgin In Page ",
        ),
        elevation: 2.0,
      ),
      body: _buildContant(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContant() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Sgin In ",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          SocialSginInButton(
            textColor: Colors.black87,
            text: "Sgin In with Google",
            assetName: 'images/google-logo.png',
            color: Colors.white,
            onPressed: () {
              print("Google ");
            },
          ),
          SizedBox(
            height: 8,
          ),
          SocialSginInButton(
            text: "Sgin in With Facebook",
            assetName: 'images/facebook-logo.png',
            textColor: Colors.white,
            color: Color(0xff334d92),
            onPressed: () {
              print("Facebook ");
            },
          ),
          SizedBox(
            height: 8,
          ),
          SocialSginInButton(
            text: "Sgin in With Email",
            textColor: Colors.white,
            assetName: 'images/outline_email_white_36dp.png',
            color: Colors.teal[700],
            onPressed: () {
              print("Email ");
            },
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "or  ",
            style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8,
          ),
          SocialSginInButton(
            text: "Go anonymous ",
            textColor: Colors.black,
            assetName: 'images/mask.png',
            color: Colors.lime[700],
            onPressed: _signInAnonymously,
          ),
        ],
      ),
    );
  }
}
