import 'package:firebase_auth/firebase_auth.dart';
import 'package:msgapp/model/user_model.dart';
import 'package:msgapp/services/autbase.dart';

class FirebaseAuthService implements AuthBase {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<MyUser?> currentuser() async {
    try {
      User? user = await _firebaseAuth.currentUser;
      return _userFromFirebase(user);
    } catch (e) {
      print("Hata Current User" + e.toString());
      return null;
    }
  }

  MyUser? _userFromFirebase(User? user) {
    if (user == null) return null;
    return MyUser(userID: user.uid);
  }

  @override
  Future<MyUser?> signInanonymously() async {
    try {
      UserCredential sonuc = await _firebaseAuth.signInAnonymously();
      return _userFromFirebase(sonuc.user);
    } catch (e) {
      print("Anonim giriş hata" + e.toString());
    }
  }

  @override
  Future<bool?> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return true;
    } catch (e) {
      print("Sign Out Hata " + e.toString());
    }
  }
}
