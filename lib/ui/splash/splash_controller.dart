import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../login/login.dart';

class SplashController extends GetxController{

  @override
  void onInit() {
    duration();
  }


  duration(){
    Timer( Duration(seconds: 2), ()async{
      Get.off(()=>const LoginView());
    });
    print("hiiiMJ");
  }
}