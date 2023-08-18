import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:msgapp/model/user_model.dart';
import 'package:msgapp/services/autbase.dart';
import 'package:msgapp/pages/sign_in_page/sign_in_widgets.dart'; 

class SignInPage extends StatelessWidget {
  final Function(User) onSignin;
  final AuthBase authservices;

  const SignInPage({
    Key? key,
    required this.onSignin,
    required this.authservices,
  }) : super(key: key);

  void _anonymoususer() async {
  try {
    Userr _user = await authservices.signInanonymously();
    onSignin(_user as User); // Userr'ı User'a dönüştür
    print("User Sign in ${_user.userID}");
  } catch (e) {
    print("Anonymous Sign In Error: $e");
  }
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
              onPressed: _anonymoususer,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
