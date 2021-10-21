import 'package:firebase_auth/firebase_auth.dart';

class AuthApi {
  final auth = FirebaseAuth.instance;
  Future<void> signUp(String email, String password) async {
    try {
      final user = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      print(e);
    }
  }

  Future<void> logIn(String email, String password) async {
    try {
      final user = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      print(user.user!.email);
    } catch (e) {
      print(e);
    }
  }

  bool isLogged() {
    return auth.currentUser != null;
  }

  Future<void> logOut() async {
    try {
      await auth.signOut();
      print(auth.currentUser);
    } catch (e) {
      print(e);
    }
  }
}
