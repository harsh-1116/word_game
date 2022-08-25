import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:word_game/common/constant/color_constant.dart';
import 'package:word_game/common/constant/font_constant.dart';
import 'package:word_game/common/constant/image_assets.dart';
import 'package:word_game/common/constant/string_constant.dart';
import 'package:word_game/common/widgets/common_widgets.dart';
import 'package:word_game/ui/select_player/select_player.dart';
import 'package:word_game/ui/signUp/signUp.dart';
import '../dashBoard/dashBoard.dart';
import '../demo.dart';
import '../drag/drag.dart';
import '../extra/extra.dart';
import '../forgot_password/forgot_password.dart';
import '../home/home.dart';
import 'login_controller.dart';
import 'login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  bool pressed = false;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      // resizeToAvoidBottomInset: false,
      GetBuilder(

        init: LoginController(),
        builder: (LoginController controller){
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageAssets.splash),fit: BoxFit.fill
                  ),
                ),

                child: Form(
                  key: controller.loginState.loginFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [


                      CommonWidgets.blurCardWithBottomText(
                          containerHeight: MediaQuery.of(context).size.height*0.68,
                          containerWidth: double.infinity,
                          scrollContentBottomPadding: 10,
                          scrollContentLeftPadding: 20,
                          scrollContentRightPadding: 20,

                          sigmaX: 35,
                          sigmaY: 15,
                          bottomWidgetBottomPadding: 10,
                          scrollContentTopPadding: 15,
                          blurCardBottomPadding: 30,

                          blurCardLeftPadding: 25,
                          blurCardRightPadding: 25,


                          borderRadius: 20,
                          borderColor: ColorConstant.whiteColor.withOpacity(0.3),
                          scrollableContent:  Expanded(
                            child: SingleChildScrollView(
                              child: Column(

                                children: [

                                  CommonWidgets.commonText(
                                    text: "WELCOME TO",
                                    fontSize: 22,
                                    fontWeight: FontWeightConstant.extra_bold,
                                    color: ColorConstant.whiteColor,
                                    height: 1.2,
                                  ),

                                  CommonWidgets.commonText(
                                    text: "WORD MINE",
                                    fontSize: 30,
                                    fontWeight: FontWeightConstant.extra_bold,
                                    color: ColorConstant.whiteColor,
                                    height: 1.2,

                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 20),
                                    child: CommonWidgets.commonTextFormField(
                                      hint: StringConstant.email,
                                      textEditingController: controller.loginState.emailController,

                                      fontWeight: FontWeightConstant.extra_bold,
                                      prefixIcon: const Icon(Icons.email,size: 16,
                                        color: Colors.white,),
                                      textColor: ColorConstant.whiteColor,

                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 20),
                                    child: CommonWidgets.commonTextFormField(
                                      obscureText: controller.hidePassword,
                                      textEditingController: controller.loginState.passwordController,
                                      hint: StringConstant.password,

                                      suffixIcon: GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                          onTap: (){
                                            // if(controller.hidePassword == false){
                                            //   controller.hidePassword == true;
                                            // } else{
                                            //   controller.hidePassword == false;
                                            // }
                                            // controller.hidePassword.value = !controller.hidePassword.value;
                                            // controller.changeStatus();
                                            // printInfo(info: "pressedBool ------ ${controller.pressedBool}");
                                            // setState(() {
                                            //   pressed = !pressed;
                                            //   print( "1w2312312321 -----$pressed");
                                            // });
                                            // Get.to(()=>StackBackground());
                                            controller.changePassword();
                                          },
                                          child: Icon( controller.hidePassword == true ? Icons.panorama_fish_eye : Icons.remove_red_eye_sharp ,size: 18,color: Colors.white,)),
                                      fontWeight: FontWeightConstant.extra_bold,
                                      prefixIcon: const Icon(Icons.password,size: 16,
                                        color: Colors.white,),
                                      textColor: ColorConstant.whiteColor,

                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 25),
                                    child: CommonWidgets.commonText(
                                        onClick: (){
                                          Get.to(
                                                  ()=>ForgotPassword());
                                        },
                                        text: StringConstant.forgotPasswordWithQuestion
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),

                                  CommonWidgets.submitButton(
                                      onclick: (){
                                        // controller.doLogin();
                                        Get.to(Home());
                                      },

                                      text: "GET STARTED",
                                      imagePath: ImageAssets.buttonWithIcon,
                                      containerHeight: 80,
                                      containerWidth: double.infinity,
                                      textLeftPadding: MediaQuery.of(context).size.width*0.25,
                                      fontSize:18,
                                      textColor: Colors.blueAccent
                                  ),


                                  // Material(
                                  //
                                  //   elevation: 0,
                                  //   child:  Padding(
                                  //     padding: const EdgeInsets.only(top:10.0),
                                  //     child: InkWell(
                                  //
                                  //       // highlightColor: Colors.red.withOpacity(0.2),
                                  //
                                  //       // onTap: (){if (kDebugMode) {
                                  //       //   print("tapped");
                                  //       // }},
                                  //
                                  //       child: Ink.image(
                                  //         child: Row(
                                  //           children: [
                                  //             Padding(
                                  //               padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.24),
                                  //               child: const Text(
                                  //                 "GET STARTED",
                                  //
                                  //                 style: TextStyle(height: 0.7,
                                  //                     fontFamily: FontFamilyConstant.aznKnucklesTrial,
                                  //                     color: Colors.blueAccent,
                                  //                     fontSize: 18),
                                  //               ),
                                  //             ),
                                  //           ],
                                  //         ),
                                  //
                                  //
                                  //         colorFilter: const ColorFilter.srgbToLinearGamma(),
                                  //         image: AssetImage(
                                  //           ImageAssets.buttonWithIcon,
                                  //         ),fit: BoxFit.fitWidth,
                                  //         height:80,
                                  //         width: MediaQuery.of(context).size.width,
                                  //       ),
                                  //     ),
                                  //   ),
                                  //   color: Colors.transparent,
                                  // ),
                                  SizedBox(height: 15,),


                                ],
                              ),
                            ),
                          ),
                          bottomWidget: Padding(
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
                                    fontSize:  MediaQuery.of(context).size.width*0.03,
                                    fontWeight: FontWeightConstant.extra_bold,
                                    color: ColorConstant.whiteColor,
                                    text: "ALREADY HAVE AN ACCOUNT?"
                                ),
                                const SizedBox(width: 3,),
                                CommonWidgets.commonUnderLinedText(
                                    underlindWidth: MediaQuery.of(context).size.width*0.13,
                                    onClick: (){
                                      Get.to(()=>const SignupView()

                                        // DragButton()
                                      );
                                    },
                                    fontSize:  MediaQuery.of(context).size.width*0.03,
                                    fontWeight: FontWeightConstant.extra_bold,
                                    color: ColorConstant.whiteColor,
                                    text: StringConstant.signUp
                                )

                              ],
                            ),
                          )
                      ),
                      // Padding(
                      //   padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height* 0.14,bottom: 60.0,left: 30,right: 30),
                      //   child: ClipRect(
                      //     child:  BackdropFilter(
                      //       filter:  ImageFilter.blur(sigmaX: 12.0, sigmaY: 8.0),
                      //       child:  Container(
                      //           width: MediaQuery.of(context).size.width,
                      //           height: MediaQuery.of(context).size.height*0.6,
                      //           decoration:  BoxDecoration(
                      //             border: Border.all(color: ColorConstant.whiteColor.withOpacity(0.3)),
                      //             borderRadius: BorderRadius.circular(20),
                      //
                      //           ),
                      //           padding: const EdgeInsets.only(top: 25.0,left: 25,right: 25,bottom: 0),
                      //           child: Stack(
                      //             alignment: Alignment.bottomCenter,
                      //             children: [
                      //               Expanded(
                      //                 child: SingleChildScrollView(
                      //                   child: Column(
                      //                     children: [
                      //
                      //                       CommonWidgets.commonText(
                      //                         text: "WELCOME TO",
                      //                         fontSize: 22,
                      //                         fontWeight: FontWeightConstant.extra_bold,
                      //                         color: ColorConstant.whiteColor,
                      //                         height: 1.2,
                      //                       ),
                      //
                      //                       CommonWidgets.commonText(
                      //                         text: "WORD MINE",
                      //                         fontSize: 30,
                      //                         fontWeight: FontWeightConstant.extra_bold,
                      //                         color: ColorConstant.whiteColor,
                      //                         height: 1.2,
                      //
                      //                       ),
                      //
                      //                       Container(
                      //                         padding: EdgeInsets.only(top: 20),
                      //                         child: CommonWidgets.commonTextFormField(
                      //                           hint: StringConstant.email,
                      //                           textEditingController: controller.loginState.emailController,
                      //
                      //                           fontWeight: FontWeightConstant.extra_bold,
                      //                           prefixIcon: const Icon(Icons.email,size: 16,
                      //                             color: Colors.white,),
                      //                           textColor: ColorConstant.whiteColor,
                      //
                      //                         ),
                      //                       ),
                      //
                      //                       Container(
                      //                         padding: EdgeInsets.only(top: 20),
                      //                         child: CommonWidgets.commonTextFormField(
                      //                           textEditingController: controller.loginState.passwordController,
                      //                           hint: StringConstant.password,
                      //                           suffixIcon: Icon(Icons.visibility,size: 18,color: Colors.white,),
                      //
                      //                           fontWeight: FontWeightConstant.extra_bold,
                      //                           prefixIcon: const Icon(Icons.password,size: 16,
                      //                             color: Colors.white,),
                      //                           textColor: ColorConstant.whiteColor,
                      //
                      //                         ),
                      //                       ),
                      //
                      //                       Container(
                      //                         padding: EdgeInsets.only(top: 15),
                      //                         child: CommonWidgets.commonText(
                      //                           onClick: (){
                      //                             Get.to(
                      //                                     ()=>ForgotPassword());
                      //                           },
                      //                             text: StringConstant.forgotPasswordWithQuestion
                      //                         ),
                      //                       ),
                      //
                      //                       SizedBox(
                      //                         height: 10,
                      //                       ),
                      //
                      //                       CommonWidgets.commonText(
                      //                         fontSize: 20,
                      //                           color: ColorConstant.redFont,
                      //                           onClick: (){
                      //                             Get.to(()=>const Home());
                      //                           },
                      //                           text: "HOME"),
                      //                       const SizedBox(
                      //                         height: 10,
                      //                       ),
                      //
                      //                       CommonWidgets.commonText(
                      //                           fontSize: 20,
                      //                           color: ColorConstant.redFont,
                      //                           onClick: (){
                      //                             Get.to(()=> SelectPlayer());
                      //                                 /*InkWrapper(splashColor: Colors.pink,onTap: (){},child: Image.asset(ImageAssets.buttonWithIcon)));*/
                      //                           },
                      //                           text: "SELECT PLAYER"),
                      //                       const SizedBox(
                      //                         height: 10,
                      //                       ),
                      //                       CommonWidgets.commonText(
                      //                           fontSize: 20,
                      //                           color: ColorConstant.redFont,
                      //                           onClick: (){
                      //                             Get.to(()=> const DragButton());
                      //                           },
                      //                           text: "Drag"),
                      //                       const SizedBox(
                      //                         height: 10,
                      //                       ),
                      //                       CommonWidgets.commonText(
                      //                           fontSize: 20,
                      //                           color: ColorConstant.redFont,
                      //                           onClick: (){
                      //                             Get.to(()=> const DashBoard());
                      //                           },
                      //                           text: "DashBoard"),
                      //                       const SizedBox(
                      //                         height: 10,
                      //                       ),
                      //                       CommonWidgets.commonText(
                      //                           fontSize: 20,
                      //                           color: ColorConstant.redFont,
                      //                           onClick: (){
                      //                             Get.to(()=> const Demo());
                      //                           },
                      //                           text: "demo"),
                      //
                      //                     ],
                      //                   ),
                      //                 ),
                      //               ),
                      //               Positioned(
                      //                   bottom: -3,
                      //
                      //                   child: bottomText())
                      //
                      //
                      //             ],
                      //           )
                      //       ),
                      //     ),
                      //   ),
                      // ),

                    ],
                  ),
                )
            ),
          ) ;
        },
      );

  }

  Widget bottomText(){
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
              text: StringConstant.donTHaveAccount
          ),
          const SizedBox(width: 3,),
          CommonWidgets.commonUnderLinedText(
              onClick: (){
                Get.to(()=>const SignupView()

                  // DragButton()
                );
              },
              fontSize: 15,
              fontWeight: FontWeightConstant.extra_bold,
              color: ColorConstant.whiteColor,
              text: StringConstant.signUp
          )

        ],
      ),
    );
  }

}




