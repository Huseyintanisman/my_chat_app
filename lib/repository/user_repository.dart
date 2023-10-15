import 'package:msgapp/locator.dart';
import 'package:msgapp/model/user_model.dart';
import 'package:msgapp/services/autbase.dart';
import 'package:msgapp/services/fake_auth_services.dart';
import 'package:msgapp/services/firebase_auth_services.dart';

enum AppMode { DEBUG, RELEASE }

class UserRepository implements AuthBase{
FirebaseAuthService _firebaseAuthService = locator<FirebaseAuthService>();
FakeAuthenticationService _fakeAuthenticationService= locator<FakeAuthenticationService>();

  AppMode appMode = AppMode.DEBUG;

  @override
  Future<MyUser?> currentuser() async {
    if (appMode==AppMode.DEBUG) {
    return await _fakeAuthenticationService.currentuser();
    } else {
    return await _firebaseAuthService.currentuser();
    }
  }

  @override
  Future<MyUser?> signInanonymously() async {
    if(appMode==AppMode.DEBUG){
    return await _fakeAuthenticationService.signInanonymously();
    }else{
    return await _firebaseAuthService.signInanonymously();
    }
  }

  @override
  Future<bool?> signOut() async {
    if(appMode == AppMode.DEBUG){
    return await _fakeAuthenticationService.signOut();
    }else{
    return await _firebaseAuthService.signOut();
    }
  }
  
  @override
  Future<MyUser?> signInWithGoogle() async {
    if(appMode==AppMode.DEBUG){
    return await _fakeAuthenticationService.signInWithGoogle();
    }else{
    return await _firebaseAuthService.signInWithGoogle();
    }
  }

}