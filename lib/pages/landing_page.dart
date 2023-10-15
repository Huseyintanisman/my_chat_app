import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:msgapp/pages/home_page_2.dart';
import 'package:msgapp/pages/sign_in_page/sign_in_page.dart';
import 'package:msgapp/viewmodel/user_model.dart';
import 'package:provider/provider.dart';

class landingPage extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    final _userModel = Provider.of<UserModel>(context, );
    if(_userModel.state == ViewState.Idle ){ 
      if(_userModel.user == null ){
        return SignInPage();
      }else{
        return HomePage2(user: _userModel.user!);
      }
    }else{
        return Scaffold(
          body: Center(child: CircularProgressIndicator(),),
        );
      }
  }
}
