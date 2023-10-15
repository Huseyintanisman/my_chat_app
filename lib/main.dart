import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:msgapp/firebase_options.dart';
import 'package:msgapp/locator.dart';
import 'package:msgapp/pages/landing_page.dart';
import 'package:msgapp/viewmodel/user_model.dart';
import 'package:provider/provider.dart';

void main() async {
  setupLocator();
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
      home: ChangeNotifierProvider(
        create: (context) => UserModel(),
        child: landingPage(),));
  }
}
