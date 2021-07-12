import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/home_page.dart';
import 'package:time_tracker/app/sign_in/sign_in_page.dart';
import 'package:time_tracker/services/auth.dart';

class Landingpage extends StatefulWidget {
  AuthBass auth ;
  Landingpage({
  @ required this.auth
});

  @override
  _LandingpageState createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  User _user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _updateUser(widget.auth.currentUser);
  }
  void _updateUser(user){
    setState(() {
      _user=user;
    });

  }
  @override
  Widget build(BuildContext context) {
    if (_user==null){
    return SignInPage(
      onSignIn: _updateUser,
      auth: widget.auth,
    );
  }
  else return HomePage(onSignOut:()=>_updateUser(null),
    auth: widget.auth,);
}}
