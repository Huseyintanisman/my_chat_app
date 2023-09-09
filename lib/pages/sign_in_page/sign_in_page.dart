import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:msgapp/model/user_model.dart';
import 'package:msgapp/pages/sign_in_page/sign_in_widgets.dart';
import 'package:msgapp/services/autbase.dart';

class SignInPage extends StatelessWidget {
  final Function(MyUser?) onSignIn;
  final AuthBase authService;

  const SignInPage({
    Key? key,
    required this.onSignIn,
    required this.authService,
  }) : super(key: key);

  void _misafirGirisi() async {
    MyUser? _user = await authService.signInanonymously();
    onSignIn(_user);
    print("oturum acan user id" + _user!.userID.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MsgApp",
            style: TextStyle(
                fontFamily: "Staatliches",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32)),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 29, 32, 35),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const Text(
              "Sign In",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 28,
            ),
            const SocialLogInWidget(
              buttonText: "Sign In With Google",
              buttonIcon: Icon(
                Icons.g_mobiledata,
                size: 38,
              ),
              buttonColor: Color.fromARGB(255, 255, 69, 69),
            ),
            const SocialLogInWidget(
              buttonText: "Sign In With FaceBook",
              buttonIcon: Icon(
                Icons.facebook,
                size: 25,
              ),
              buttonColor: Color(0xFF334D92),
            ),
            const SocialLogInWidget(
              buttonText: "Sign In With e-Mail And Password",
              buttonIcon: Icon(Icons.mail),
              buttonColor: Color.fromARGB(255, 18, 141, 7),
            ),
            SocialLogInWidget(
              buttonText: "Sign In Anonymous",
              buttonIcon: const Icon(Icons.supervised_user_circle),
              buttonColor: const Color.fromARGB(255, 40, 40, 40),
              onPressed: _misafirGirisi,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
