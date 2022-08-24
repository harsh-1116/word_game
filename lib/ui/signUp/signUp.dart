import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_game/ui/login/login.dart';
import 'package:word_game/ui/signUp/signup_controller.dart';

import '../../common/constant/color_constant.dart';
import '../../common/constant/font_constant.dart';
import '../../common/constant/image_assets.dart';
import '../../common/constant/string_constant.dart';
import '../../common/widgets/common_widgets.dart';
import '../forgot_password/forgot_password.dart';
import '../home/home.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {






  @override
  Widget build(BuildContext context) {
    double viewInsetsHeight = Get.height* 0.35;
    return GetBuilder(

        init: SignupController(),
        builder: (SignupController controller) {

          return Scaffold(
            resizeToAvoidBottomInset: false,
            body:
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(ImageAssets.splash), fit: BoxFit.fill,alignment: Alignment.topCenter),
              ),
              child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageAssets.splash), fit: BoxFit.cover),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                           EdgeInsets.only(top: Get.height * 0.05, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(ImageAssets.splash),
                              ),
                              // CircleAvatar(
                              //   backgroundImage: AssetImage(ImageAssets.splash),
                              //
                              //
                              // ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).viewInsets.bottom > 0 ?
                                      Get.height * 0.05 : Get.height * 0.15,
                                    ),
                                    child: CommonWidgets.blurCardWithBottomText(
                                        containerHeight: MediaQuery.of(context).viewInsets.bottom > 0  ? Get.height * 0.78 : Get.height * 0.68,
                                        containerWidth: double.infinity,
                                        scrollContentBottomPadding: 10,
                                        scrollContentLeftPadding: 20,
                                        scrollContentRightPadding: 20,
                                        sigmaX: 25,
                                        sigmaY: 7,
                                        bottomWidgetBottomPadding: 10,
                                        scrollContentTopPadding:  MediaQuery.of(context).viewInsets.bottom > 0  ? 0 : 25,
                                        blurCardBottomPadding: 10,
                                        blurCardLeftPadding: 25,
                                        blurCardRightPadding: 25,
                                        blurCardTopPadding: 25,
                                        borderRadius: 20,
                                        borderColor:
                                        ColorConstant.whiteColor.withOpacity(0.3),
                                        scrollableContent: Expanded(
                                          child: SingleChildScrollView(
                                            // physics: NeverScrollableScrollPhysics(),

                                            child: Column(
                                              children: [

                                                Padding(
                                                  padding:  EdgeInsets.only(
                                                      top:  Get.height* 0.005,bottom: MediaQuery.of(context).viewInsets.bottom > 0  ? 5 : 0),
                                                  child: CommonWidgets.commonText(
                                                    text: "SIGN UP",
                                                    fontSize: 22,
                                                    fontWeight: FontWeightConstant.extra_bold,
                                                    color: ColorConstant.whiteColor,
                                                    height: 1.2,
                                                  ),
                                                ),


                                                Container(
                                                  padding: EdgeInsets.only(top: 25),
                                                  child: CommonWidgets.commonTextFormField(
                                                    scrollpadding: 500,
                                                    hint: StringConstant.name,
                                                    textEditingController:
                                                    controller.signupState.nameController,
                                                    fontWeight: FontWeightConstant.extra_bold,
                                                    prefixIcon: const Icon(
                                                      Icons.android_outlined,
                                                      size: 16,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: ColorConstant.whiteColor,
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(top: 20),
                                                  child: CommonWidgets.commonTextFormField(
                                                    scrollpadding: 500,
                                                    textEditingController: controller
                                                        .signupState.usernameController,
                                                    hint: StringConstant.userName,
                                                    fontWeight: FontWeightConstant.extra_bold,
                                                    prefixIcon: const Icon(
                                                      Icons.android_outlined,
                                                      size: 16,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: ColorConstant.whiteColor,
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(top: 20),
                                                  child: CommonWidgets.commonTextFormField(
                                                    scrollpadding: 500,
                                                    textEditingController:
                                                    controller.signupState.emailController,
                                                    hint: StringConstant.email,
                                                    fontWeight: FontWeightConstant.extra_bold,
                                                    prefixIcon: const Icon(
                                                      Icons.email,
                                                      size: 16,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: ColorConstant.whiteColor,
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(top: 20),
                                                  child: CommonWidgets.commonTextFormField(
                                                    scrollpadding: 500,
                                                    textEditingController: controller
                                                        .signupState.passwordController,
                                                    hint: StringConstant.password,
                                                    suffixIcon: Icon(
                                                      Icons.visibility,
                                                      size: 18,
                                                      color: Colors.white,
                                                    ),
                                                    fontWeight: FontWeightConstant.extra_bold,
                                                    prefixIcon: const Icon(
                                                      Icons.password,
                                                      size: 16,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: ColorConstant.whiteColor,
                                                  ),
                                                ),
                                                Container(

                                                  padding: EdgeInsets.only(top: 20),
                                                  child: CommonWidgets.commonTextFormField(
                                                    scrollpadding: 500,
                                                    textEditingController: controller
                                                        .signupState.confirmPasswordController,
                                                    hint: StringConstant.confirmPassword,
                                                    suffixIcon: Icon(
                                                      Icons.visibility,
                                                      size: 18,
                                                      color: Colors.white,
                                                    ),
                                                    fontWeight: FontWeightConstant.extra_bold,
                                                    prefixIcon: const Icon(
                                                      Icons.password,
                                                      size: 16,
                                                      color: Colors.white,
                                                    ),
                                                    textColor: ColorConstant.whiteColor,
                                                  ),
                                                ),
                                                Container(

                                                  padding: EdgeInsets.only(top: 10,bottom: MediaQuery.of(context).
                                                  viewInsets.bottom > 0 ? viewInsetsHeight - 40 : 20),
                                                  child: CommonWidgets.submitButton(
                                                      onclick: () {
                                                        Get.to(Home());
                                                      },
                                                      text: "SIGN UP",
                                                      imagePath: ImageAssets.buttonWithIcon,
                                                      containerHeight: 80,
                                                      containerWidth: double.infinity,
                                                      textLeftPadding:
                                                      Get.width *
                                                          0.25,
                                                      fontSize: 18,
                                                      textColor: Colors.blueAccent),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        bottomText: Padding(
                                          padding: const EdgeInsets.only(top:10,bottom: 0),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              CommonWidgets.commonText(
                                                // onClick: (){
                                                //   Get.to(()=>
                                                //       SignUpScreen()
                                                //   );
                                                // },
                                                  fontSize: MediaQuery.of(context).size.width*0.03,
                                                  fontWeight: FontWeightConstant.extra_bold,
                                                  color: ColorConstant.whiteColor,
                                                  text: "ALREADY HAVE AN ACCOUNT?"
                                              ),
                                              const SizedBox(width: 3,),
                                              CommonWidgets.commonUnderLinedText(
                                                  underlindWidth: Get.width*0.10,
                                                  onClick: (){
                                                    Get.to(()=>const LoginView()

                                                      // DragButton()
                                                    );
                                                  },
                                                  fontSize: Get.width*0.03,
                                                  fontWeight: FontWeightConstant.extra_bold,
                                                  color: ColorConstant.whiteColor,
                                                  text: StringConstant.login
                                              )

                                            ],
                                          ),
                                        )
                                    ),

                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ),

          );
        });
  }

  Widget bottomText() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonWidgets.commonText(
              // onClick: (){
              //   Get.to(()=>
              //       SignUpScreen()
              //   );
              // },
              fontSize: 16,
              fontWeight: FontWeightConstant.extra_bold,
              color: ColorConstant.whiteColor,
              text: "ALREADY HAVE AN ACCOUNT?"),
          const SizedBox(
            width: 3,
          ),
          CommonWidgets.commonUnderLinedText(
              underlindWidth: 40,
              onClick: () {
                Get.to(() => const LoginView()

                    // DragButton()
                    );
              },
              fontSize: 15,
              fontWeight: FontWeightConstant.extra_bold,
              color: ColorConstant.whiteColor,
              text: StringConstant.login)
        ],
      ),
    );
  }
}
