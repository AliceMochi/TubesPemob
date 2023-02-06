import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HermezFirebaseUser {
  HermezFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

HermezFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HermezFirebaseUser> hermezFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<HermezFirebaseUser>(
      (user) {
        currentUser = HermezFirebaseUser(user);
        return currentUser!;
      },
    );
