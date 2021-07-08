import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onSginOut;

  const HomePage({Key key, this.onSginOut}) : super(key: key);

  Future<void> _sginOut() async {
    try {
      await FirebaseAuth.instance.signOut;
      onSginOut();
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
              onPressed: () {_sginOut();},
            )
          ],
        ),
      ),
    );
  }
}
