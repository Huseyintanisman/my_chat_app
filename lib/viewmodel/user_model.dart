import 'package:flutter/material.dart';
import 'package:msgapp/locator.dart';
import 'package:msgapp/model/user_model.dart';
import 'package:msgapp/repository/user_repository.dart';
import 'package:msgapp/services/autbase.dart';

enum ViewState {Idle, Busy}

class UserModel with ChangeNotifier implements AuthBase {

  ViewState _state = ViewState.Idle;
  UserRepository _userRepository = locator<UserRepository>();

  MyUser? _user;

  MyUser? get user => _user;
  

  ViewState get state => _state;

  set state(ViewState value) {
    _state = value;
    notifyListeners();
  }

  UserModel(){
    currentuser();
  }
  
  @override
  Future<MyUser?> currentuser() async {
    try{
      state= ViewState.Busy;
    _user = await _userRepository.currentuser();
    return _user;
    }catch(e)
    {
      debugPrint("ViewModeldeki Current Userda Hata"+e.toString());
      return null;
    }finally{
      state=ViewState.Idle;
    }
  }
  
  @override
  Future<MyUser?> signInanonymously() async {
    try{
      state= ViewState.Busy;
      _user = await _userRepository.signInanonymously();
      return _user;
    }catch(e)
    {
      debugPrint("SignOut Hata"+e.toString());
      return null ;
    }finally{
      state=ViewState.Idle;
    }
  }
  
  @override
  Future<bool?> signOut() async {
   try{
      state = ViewState.Busy;
      bool? sonuc = await _userRepository.signOut();
      _user = null;
      return sonuc;
    }catch(e)
    {
      debugPrint("SignOut Hata"+e.toString());
      return false;
    }finally{
      state=ViewState.Idle;
    }
  }
  
  @override
  Future<MyUser?> signInWithGoogle() async {
    try{
      state= ViewState.Busy;
      _user = await _userRepository.signInWithGoogle();
      return _user;
    }catch(e)
    {
      debugPrint("SignOut Hata"+e.toString());
      return null ;
    }finally{
      state=ViewState.Idle;
    }
    
  }
}