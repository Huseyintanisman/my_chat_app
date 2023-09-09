import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:msgapp/model/user_model.dart';
import 'package:msgapp/pages/home_page_2.dart';
import 'package:msgapp/pages/sign_in_page/sign_in_page.dart';
import 'package:msgapp/services/autbase.dart';

class landingPage extends StatefulWidget {
  final AuthBase authService;

  const landingPage({super.key, required this.authService});

  @override
  State<landingPage> createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  MyUser? _user;

  @override
  void initState() {
    super.initState();
    _checkUser();
  }

  Future<void> _checkUser() async {
    _user = await widget.authService.currentuser();
    setState(() {});
  }

  void _updateUser(MyUser? user) {
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInPage(
        authService: widget.authService,
        onSignIn: (user) {
          _updateUser(user!);
        }, 
      );
    } else {
      return HomePage2(
        user: _user!,
        authService: widget.authService,
        onSignOut: () {
          _updateUser(null);
        }, 
      );
    }
  }
}
