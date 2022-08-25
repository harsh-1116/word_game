import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:word_game/repository/auth_repository.dart';
import 'package:word_game/ui/home/home.dart';
import 'package:word_game/ui/login/login_state.dart';

import '../../common/constant/string_constant.dart';
import '../../model/load_status/load_status.dart';

class LoginController extends GetxController{

  final LoginState loginState = LoginState();
  final _authRepository = Get.find<AuthRepository>();
  final active = false.obs;
  final updateActive = Get.height.obs > 750 ? true : false;
  bool hidePassword = false;
  RxBool hidePasswords = false.obs;
  var pressedBool = false;

  @override
  void onInit() {
    printInfo(info: "objectt");
    deviceSize();
    functionPass();
    super.onInit();
  }




  void doLogin() async {
    if (loginState.loginFormKey.currentState!.validate()) {
      loginState.loginStatus.value = LoadStatus.loading;
      EasyLoading.show(
        status: StringConstant.loading,
      );
      try {
        var jsonBody = {
          "email": loginState.emailController.text.trim().toLowerCase(),
          "password": loginState.passwordController.text.trim()
        };
        // final result = await _authRepository.doLogin(reqBody: jsonBody);
        Map<String, dynamic> result = await _authRepository.doLogin(
            emailId: loginState.emailController.text.trim().toLowerCase(),
            password: loginState.passwordController.text.trim());

        EasyLoading.dismiss();
        bool isLogin = false;
        loginState.loginStatus.value = LoadStatus.success;

        if (result != null && result['code'] == 1 && result['code'] != null) {
          print("result code------>>>>${result['code']}");
          SharedPreferences prefs = await SharedPreferences.getInstance();
          Get.offAll(()=>const Home());

          /*prefs.setString(Constants.auth_token, result.data!.token!.toString());
          prefs.setBool(Constants.is_login, true);*/
        }

        print("response ------->$result");
      } catch (e) {
        print("error in login---->>>>$e");
        loginState.loginStatus.value = LoadStatus.failure;
      }
    }
  }

  deviceSize(){
    final updateActive = Get.height > 750 ? true : false;

    double deviceHeight = Get.height;
    double deviceWidth = Get.width;
    double devicePixelRatio = Get.window.devicePixelRatio;
    print("deviceHeight-~-~-~-~-~ $deviceHeight");
    print("deviceWidth-~-~-~-~-~ $deviceWidth");
    print("devicePixelRatio-~-~-~-~-~ $devicePixelRatio");
  }

  changeStatus() {
    if(pressedBool){
      pressedBool = false;
    }
    else {
      pressedBool = true;
    }
    update();

  }

  functionPass(){
    active(!active.value);
    updateActive;
    printInfo(info: "active-~-~-~-~-~ ${active(!active.value)}");
    printInfo(info: "changeStatus-~-~-~-~-~ $changeStatus(");
  }

  changePassword(){
    if(hidePassword == true){
      hidePassword == false;
    } else{
      hidePassword == true;
    }
    hidePassword = !hidePassword;
    update();
  }

}