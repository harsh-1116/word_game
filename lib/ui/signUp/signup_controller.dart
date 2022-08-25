

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_game/ui/signUp/signUp_State.dart';

class SignupController extends GetxController{
  final SignupState signupState = SignupState();
 bool name = false;


  @override
  void onInit() {
    signupState.screenSize();
    super.onInit();
  }

  changeStatus() {
    if(name){
      name = false;
    }
    else {
      name = true;
    }
    update();

  }


}
