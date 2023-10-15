
import 'package:msgapp/model/user_model.dart';

abstract class AuthBase {

  Future<MyUser?> currentuser();
  Future<MyUser?> signInanonymously();
  Future<bool?> signOut();
  Future<MyUser?> signInWithGoogle();

}
