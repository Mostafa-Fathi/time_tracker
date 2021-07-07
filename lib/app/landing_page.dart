import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/sgin_in/sgin_in_page.dart';

class Landingpage extends StatefulWidget {

  @override
  _LandingpageState createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  User _user;
  void _updateUser(user){
    setState(() {
      _user=user;
    });

  }
  @override
  Widget build(BuildContext context) {
    if (_user==null){
    return SginInPage(
      onSginIn: _updateUser,
    );
  }
  else return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("Landing "),
        ),
      ),
    );}
}
