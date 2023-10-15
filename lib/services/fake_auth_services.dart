import 'package:msgapp/model/user_model.dart';
import 'package:msgapp/services/autbase.dart';

class FakeAuthenticationService implements AuthBase {
  String userID = "Hüseyin Tanişman";

  @override
  Future<MyUser> currentuser() async {
    return await Future.value(MyUser(userID: userID));
  }

  @override
  Future<MyUser> signInanonymously() async {
    return await Future.delayed(
        const Duration(seconds: 2), () => MyUser(userID: userID));
  }

  @override
  Future<bool> signOut() {
    return Future.value(true);
  }
  
  @override
  Future<MyUser?> signInWithGoogle() {
    throw UnimplementedError();
  }
}
