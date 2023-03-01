import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MaagappFirebaseUser {
  MaagappFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MaagappFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MaagappFirebaseUser> maagappFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MaagappFirebaseUser>(
      (user) {
        currentUser = MaagappFirebaseUser(user);
        return currentUser!;
      },
    );
