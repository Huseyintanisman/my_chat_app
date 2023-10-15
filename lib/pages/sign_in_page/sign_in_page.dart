import 'package:flutter/material.dart';
import 'package:msgapp/gen/assets_gen.dart';
import 'package:msgapp/helpers/size_helper.dart';
import 'package:msgapp/model/user_model.dart';
import 'package:msgapp/pages/sign_in_page/sign_in_widgets.dart';
import 'package:msgapp/viewmodel/user_model.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {

  void _misafirGirisi(BuildContext context) async {
    final _userModel = Provider.of<UserModel>(context, listen: false);
    MyUser? _user = await _userModel.signInanonymously();
    print("oturum acan user id" + _user!.userID.toString());
  }
    void _googleIleGiris(BuildContext context) async{
      final _userModel = Provider.of<UserModel>(context, listen: false);
    MyUser? _user = await _userModel.signInWithGoogle();
    print("oturum acan user id" + _user!.userID.toString());
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MsgApp",
          style: TextStyle(
            fontFamily: "Staatliches",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 29, 32, 35),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.images.backgroundimage.path),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 35, 33, 33).withOpacity(0.8),
              ),
              height: context.height * 1,
              width: context.width * 1,
              child: Stack(
                children: [],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: const Color.fromARGB(255, 38, 36, 36).withOpacity(0.7), 
              child: Padding(
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
                        fontSize: 32,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    SocialLogInWidget(
                      buttonText: "Sign In With Google",
                      buttonIcon: Icon(
                        Icons.g_mobiledata,
                        size: 38,
                      ),
                      buttonColor: Color.fromARGB(255, 255, 69, 69),
                      onPressed: () => _googleIleGiris(context),
                    ),
                    SocialLogInWidget(
                      buttonText: "Sign In With FaceBook",
                      buttonIcon: Icon(
                        Icons.facebook,
                        size: 25,
                      ),
                      buttonColor: Color(0xFF334D92),
                    ),
                    SocialLogInWidget(
                      buttonText: "Sign In With e-Mail And Password",
                      buttonIcon: Icon(Icons.mail),
                      buttonColor: Color.fromARGB(255, 18, 141, 7),
                    ),
                    SocialLogInWidget(
                      buttonText: "Sign In Anonymous",
                      buttonIcon: Icon(Icons.supervised_user_circle),
                      buttonColor: Color.fromARGB(255, 40, 40, 40),
                      onPressed: () => _misafirGirisi(context),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  
}
