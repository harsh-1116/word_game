

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/load_status/load_status.dart';

class LoginState{

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final loginStatus = LoadStatus.initial.obs;

  LoginState(){

    emailController = TextEditingController(text: kDebugMode ? "harsh216@gmail.com" : "");
    passwordController = TextEditingController(text: kDebugMode ? "Test@123":"");



  }

}