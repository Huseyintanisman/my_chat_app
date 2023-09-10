import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:msgapp/model/user_model.dart';
import 'package:msgapp/services/autbase.dart';

class HomePage2 extends StatelessWidget {
  final Function onSignOut;
  final AuthBase authService;
  final MyUser user;

  HomePage2({Key? key, required this.onSignOut, required this.authService, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(),
            ),
            const Positioned(
              top: 100,
              left: 50,
              child: Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 52,
                  fontFamily: "Pacifico",
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 60,
              child: Text(
                "Oturum Açan User ID ${user.userID}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: "italic",
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 20,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Start"),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: TextButton(
                onPressed:_cikisYap,
                child: const Text("Sign Out"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool?> _cikisYap() async {
    bool? sonuc = await authService.signOut();
    onSignOut();
    return sonuc;
  }
}
