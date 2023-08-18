import 'package:flutter/material.dart';
import 'package:msgapp/services/autbase.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  final AuthBase authservices;
  final VoidCallback onSignOut;
  final User? user;

  HomePage({
    Key? key,
    required this.onSignOut,
    required this.user,
    required this.authservices,
  }) : super(key: key);

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
            Positioned(
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
              top: 500,
              left: 50,
              child: Text(
                "User '${user?.uid}'",
                style: TextStyle(
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
                child: Text("Start"),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: TextButton(
                onPressed: _signOut,
                child: Text("Sign Out"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _signOut() async {
    try {
      await authservices.signOut();
      onSignOut();
    } catch (e) {
      print("Sign Out Error: $e");
    }
  }
}
