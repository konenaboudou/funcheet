import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FunchatFirebaseUser {
  FunchatFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FunchatFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FunchatFirebaseUser> funchatFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<FunchatFirebaseUser>(
        (user) => currentUser = FunchatFirebaseUser(user));
