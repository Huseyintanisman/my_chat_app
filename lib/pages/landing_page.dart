import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:msgapp/model/user_model.dart';
import 'package:msgapp/pages/home_page.dart';
import 'package:msgapp/pages/sign_in_page/sign_in_page.dart';
import 'package:msgapp/services/autbase.dart';

class LandingPage extends StatefulWidget {
  final AuthBase authServices;

  const LandingPage({Key? key, required this.authServices}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User? _user; // Using the User class from firebase_auth

  @override
  void initState() {
    super.initState();
    _checkUser();
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInPage(
        authservices: widget.authServices,
        onSignin: (user) {
          _updateuser(user);
        },
      );
    } else {
      return HomePage(
        authservices: widget.authServices,
        user: _user!,
        onSignOut: () {
          _updateuser(null);
        },
      );
    }
  }

  Future<void> _checkUser() async {
    try {
      Userr user = await widget.authServices.currentuser();
      _updateuser(user as User?);
    } catch (e) {
      print("Check User Error: $e");
    }
  }

  void _updateuser(User? user) {
    setState(() {
      _user = Userr(userID: user?.uid);
    });
  }
}
