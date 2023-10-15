import 'package:get_it/get_it.dart';
import 'package:msgapp/repository/user_repository.dart';
import 'package:msgapp/services/fake_auth_services.dart';
import 'package:msgapp/services/firebase_auth_services.dart';

GetIt locator= GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => FirebaseAuthService());
  locator.registerLazySingleton(() => FakeAuthenticationService());
  locator.registerLazySingleton(() => UserRepository());

}