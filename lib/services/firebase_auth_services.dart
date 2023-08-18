import 'package:firebase_auth/firebase_auth.dart';
import 'package:msgapp/model/user_model.dart';
import 'package:msgapp/services/autbase.dart';

class FireBaseAuthServices implements AuthBase {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? _userFromFirebase(User? userr) {
    if (userr == null) return null;
    return userr;
  }

  @override
  Future<bool> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return true;
    } catch (e) {
      print("Sign Out Error: $e");
      return false;
    }
  }

  @override
  Future<User?> currentuser() async {
    try {
      User? user = _firebaseAuth.currentUser;
      if (user != null) {
        return _userFromFirebase(user);
      } else {
        throw FirebaseAuthException(
          code: "user-not-found",
          message: "No user is currently signed in.",
        );
      }
    } catch (e) {
      print("Current User Error: $e");
      rethrow;
    }
  }

  @override
  @override
 Future<Userr> signInanonymously() async {
  try {
    UserCredential anonUser = await _firebaseAuth.signInAnonymously();
    return _userFromFirebase(anonUser.user)!;
  } catch (e) {
    print("Sign In Anonymously Error: $e");
    rethrow;
  }
}
  }

