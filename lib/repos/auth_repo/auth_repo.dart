import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepo {
  final _auth = FirebaseAuth.instance;

  Future<User?> createUserWithUsernamePassword(
      String email, String password) async {
    try {
      final creds = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return creds.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      return null;
    }
  }

  Future<User?> signinWithGoogle() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return null;
      final googleAuth = await googleUser.authentication;
      final creds = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final userCredential = await _auth.signInWithCredential(creds);
      return userCredential.user;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
