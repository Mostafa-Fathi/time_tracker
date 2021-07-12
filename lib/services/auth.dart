import 'package:firebase_auth/firebase_auth.dart';
abstract class AuthBass{
  Future<void> signOut();
  Future<User> signInAnonymously();
  User get currentUser;

}

class Auth implements AuthBass {
  final _firebaseAuth= FirebaseAuth.instance;
  @override
  Future<void> signOut() async {

      await _firebaseAuth.signOut;

  }
  @override

  Future<User> signInAnonymously() async {

      final userCredential = await _firebaseAuth.signInAnonymously();
      return userCredential.user;
  }
  @override
  User get currentUser=>_firebaseAuth.currentUser;




}