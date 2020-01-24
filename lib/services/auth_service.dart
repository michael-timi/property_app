import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<String> get onAuthStateChanged => _firebaseAuth.onAuthStateChanged.map(
        (FirebaseUser user) => user?.uid,
      );

  //Email & Password Sign Up
  Future<String> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    AuthResult result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;

    //Update the username
//    var userUpdateInfo = UserUpdateInfo();
//    userUpdateInfo.displayName = name;
//    await currentUser.updateProfile(userUpdateInfo);
//    await currentUser.reload();
//    return currentUser.uid;
  }

  //Email & Password Sign In
  Future<String> signInWithEmailAndPassword(
      String email, String password) async {
    AuthResult result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  //Sign Out
signOut(){
    return _firebaseAuth.signOut();
}
}
