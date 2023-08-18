import 'package:firebase_auth/firebase_auth.dart';
import 'package:msgapp/model/user_model.dart';

abstract class AuthBase {

  Future<User?> currentuser();
  Future<Userr> signInanonymously();
  Future<bool> signOut();

}
