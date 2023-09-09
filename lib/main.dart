import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:msgapp/firebase_options.dart';
import 'package:msgapp/pages/landing_page.dart';
import 'package:msgapp/services/fake_auth_services.dart';
import 'package:msgapp/services/firebase_auth_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello_chatt",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: landingPage(
        authService: FirebaseAuthService(),
      ),
    );
  }
}
