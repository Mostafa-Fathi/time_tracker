import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/services/auth.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onSignOut;
  final AuthBass auth;

  const HomePage({Key key, @ required this.onSignOut,@required this.auth}) : super(key: key);

  Future<void> _signOut() async {
    try {
      await auth.signOut();
      onSignOut();
    } catch (e) {
      print(e.toString());
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(" Home Page "),
          actions: <Widget>[
            TextButton(
              child: Text(
                "Logout ",
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              onPressed: () {_signOut();},
            )
          ],
        ),
      ),
    );
  }
}
