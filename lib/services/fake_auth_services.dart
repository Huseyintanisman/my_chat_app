import 'package:msgapp/model/user_model.dart';
import 'package:msgapp/services/autbase.dart';

// ignore: camel_case_types
class fakeAuthServices implements AuthBase {
  String userID = "1233332554354333333765";

  @override
  Future<Userr> currentuser() async {
    return await Future.value(Userr(userID: userID));
  }

  @override
  Future<Userr> signInanonymously() async {
    return await Future.delayed(
        const Duration(seconds: 2), () => Userr(userID: userID));
  }

  @override
  Future<bool> signOut() async {
    return await Future.value(true);
  }
}
