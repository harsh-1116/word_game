import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common/constant/color_constant.dart';
import '../../common/constant/font_constant.dart';
import '../../common/constant/image_assets.dart';
import '../../common/constant/string_constant.dart';
import '../../common/widgets/common_widgets.dart';
import '../dashBoard/dashBoard.dart';
import '../demo.dart';
import '../drag/drag.dart';
import '../home/home.dart';
import '../select_player/select_player.dart';

class Extra extends StatefulWidget {
  const Extra({Key? key}) : super(key: key);

  @override
  _ExtraState createState() => _ExtraState();
}

class _ExtraState extends State<Extra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageAssets.splash), fit: BoxFit.cover),
          ),
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 30),
              child: Container(
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.black)),
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.only(top: 45.0, left: 20, right: 20),
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
                        const SizedBox(
                          height: 40,
                        ),

                        CommonWidgets.commonText(
                            fontSize: 20,
                            color: ColorConstant.redFont,
                            onClick: () {
                              Get.to(()=>const Home());
                            },
                            text: "HOME"),
                        const SizedBox(
                          height: 20,
                        ),

                        CommonWidgets.commonText(
                            fontSize: 20,
                            color: ColorConstant.redFont,
                            onClick: () {
                              // Get.to(() => SelectPlayer());
                              InkWrapper(splashColor: Colors.pink,
                                  onTap: () {},
                                  child: Image.asset(ImageAssets.buttonWithIcon)
                              );
                            },
                            text: "SELECT PLAYER"),
                        const SizedBox(
                          height: 20,
                        ),
                        CommonWidgets.commonText(
                            fontSize: 20,
                            color: ColorConstant.redFont,
                            onClick: () {
                              Get.to(() => const DragButton());
                            },
                            text: "Drag"),
                        const SizedBox(
                          height: 20,
                        ),
                        CommonWidgets.commonText(
                            fontSize: 20,
                            color: ColorConstant.redFont,
                            onClick: () {
                              Get.to(() => const DashBoard());
                            },
                            text: "DashBoard"),
                        const SizedBox(
                          height: 20,
                        ),
                        CommonWidgets.commonText(
                            fontSize: 20,
                            color: ColorConstant.redFont,
                            onClick: () {
                              Get.to(() => const Demo());
                            },
                            text: "demo"),
                        Container(
                          padding: EdgeInsets.only(top: 25),
                          child: CommonWidgets.commonTextFormField(
                            hint: StringConstant.name,
                            // textEditingController:
                            // controller.signupState.nameController,
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
                            // textEditingController: controller
                            //     .signupState.confirmPasswordController,
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
                          padding: EdgeInsets.only(top: 20,bottom: MediaQuery.of(context).viewInsets.bottom + 10),
                          child: CommonWidgets.commonTextFormField(
                            // textEditingController: controller
                            //     .signupState.confirmPasswordController,
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
                          padding: EdgeInsets.only(top: 10),
                          child: CommonWidgets.submitButton(
                              onclick: () {
                                // Get.to(Home());
                              },
                              text: "SIGN UP",
                              imagePath: ImageAssets.buttonWithIcon,
                              containerHeight: 80,
                              containerWidth: double.infinity,
                              textLeftPadding:
                              MediaQuery.of(context).size.width *
                                  0.25,
                              fontSize: 18,
                              textColor: Colors.blueAccent),
                        ),

                        AnimatedTextKit(
                          stopPauseOnTap: true,
                          animatedTexts: [
                            RotateAnimatedText('AWESOME'),
                            RotateAnimatedText('OPTIMISTIC'),
                            RotateAnimatedText(
                              'DIFFERENT',
                              textStyle: const TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                          onTap: (){},
                          isRepeatingAnimation: true,
                          totalRepeatCount: 1,
                        ),

                        // Padding(
                        //   padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.15),
                        //   child: CommonWidgets.blurCard(
                        //     containerHeight: MediaQuery.of(context).size.height*0.60,
                        //       containerWidth: double.infinity,
                        //       scrollContentBottomPadding: 10,
                        //       scrollContentLeftPadding: 20,
                        //       scrollContentRightPadding: 20,
                        //
                        //       sigmaX: 10,
                        //       sigmaY: 5,
                        //       bottomWidgetBottomPadding: 10,
                        //        scrollContentTopPadding: 15,
                        //       blurCardBottomPadding: 10,
                        //       blurCardLeftPadding: 25,
                        //       blurCardRightPadding: 25,
                        //       blurCardTopPadding: 25,
                        //       borderRadius: 20,
                        //       borderColor: ColorConstant.whiteColor.withOpacity(0.3),
                        //       scrollableContent:  Column(
                        //         children: [
                        //
                        //           CommonWidgets.commonText(
                        //             text: "SIGN UP",
                        //             fontSize: 26,
                        //             fontWeight: FontWeightConstant.extra_bold,
                        //             color: ColorConstant.whiteColor,
                        //             height: 1.2,
                        //
                        //           ),
                        //
                        //
                        //
                        //           Container(
                        //             padding: EdgeInsets.only(top: 20),
                        //             child: CommonWidgets.commonTextFormField(
                        //               hint: StringConstant.name,
                        //               // textEditingController: controller.signupState.nameController,
                        //
                        //               fontWeight: FontWeightConstant.extra_bold,
                        //               prefixIcon: const Icon(Icons.android_outlined,size: 16,
                        //                 color: Colors.white,),
                        //               textColor: ColorConstant.whiteColor,
                        //
                        //             ),
                        //           ),
                        //           Container(
                        //             padding: EdgeInsets.only(top: 20),
                        //             child: CommonWidgets.commonTextFormField(
                        //               hint: StringConstant.name,
                        //               // textEditingController: controller.signupState.nameController,
                        //
                        //               fontWeight: FontWeightConstant.extra_bold,
                        //               prefixIcon: const Icon(Icons.android_outlined,size: 16,
                        //                 color: Colors.white,),
                        //               textColor: ColorConstant.whiteColor,
                        //
                        //             ),
                        //           ),
                        //           Container(
                        //             padding: EdgeInsets.only(top: 20),
                        //             child: CommonWidgets.commonTextFormField(
                        //               // textEditingController: controller.signupState.usernameController,
                        //               hint: StringConstant.userName,
                        //
                        //               fontWeight: FontWeightConstant.extra_bold,
                        //               prefixIcon: const Icon(Icons.android_outlined,size: 16,
                        //                 color: Colors.white,),
                        //               textColor: ColorConstant.whiteColor,
                        //
                        //             ),
                        //           ),
                        //           Container(
                        //
                        //             padding: EdgeInsets.only(top: 20),
                        //             child: CommonWidgets.commonTextFormField(
                        //               scrollpadding: 500,
                        //               // textEditingController: controller.signupState.emailController,
                        //               hint: StringConstant.email,
                        //
                        //               fontWeight: FontWeightConstant.extra_bold,
                        //               prefixIcon: const Icon(Icons.email,size: 16,
                        //                 color: Colors.white,),
                        //               textColor: ColorConstant.whiteColor,
                        //
                        //             ),
                        //           ),
                        //           Container(
                        //             padding: EdgeInsets.only(top: 20),
                        //             child: CommonWidgets.commonTextFormField(
                        //               // textEditingController: controller.signupState.passwordController,
                        //               hint: StringConstant.password,
                        //               suffixIcon: Icon(Icons.visibility,size: 18,color: Colors.white,),
                        //
                        //               fontWeight: FontWeightConstant.extra_bold,
                        //               prefixIcon: const Icon(Icons.password,size: 16,
                        //                 color: Colors.white,),
                        //               textColor: ColorConstant.whiteColor,
                        //
                        //             ),
                        //           ),
                        //           Container(
                        //             padding: EdgeInsets.only(top: 20),
                        //             child: CommonWidgets.commonTextFormField(
                        //               // textEditingController: controller.signupState.confirmPasswordController,
                        //               hint: StringConstant.confirmPassword,
                        //               suffixIcon: Icon(Icons.visibility,size: 18,color: Colors.white,),
                        //
                        //               fontWeight: FontWeightConstant.extra_bold,
                        //               prefixIcon: const Icon(Icons.password,size: 16,
                        //                 color: Colors.white,),
                        //               textColor: ColorConstant.whiteColor,
                        //
                        //             ),
                        //           ),
                        //           CommonWidgets.submitButton(
                        //             text: StringConstant.signUp,
                        //             imagePath: ImageAssets.buttonWithIcon,
                        //            containerHeight: 80,
                        //            containerWidth: double.infinity,
                        //             textLeftPadding: MediaQuery.of(context).size.width*0.25,
                        //             fontSize:18,
                        //             textColor: Colors.blueAccent
                        //           ),
                        //           // Material(
                        //           //
                        //           //   elevation: 0,
                        //           //   child:  Padding(
                        //           //     padding: const EdgeInsets.only(top:20.0),
                        //           //     child: InkWell(
                        //           //
                        //           //       // highlightColor: Colors.red.withOpacity(0.2),
                        //           //
                        //           //       // onTap: (){if (kDebugMode) {
                        //           //       //   print("tapped");
                        //           //       // }},
                        //           //
                        //           //       child: Ink.image(
                        //           //         child: Row(
                        //           //           children: [
                        //           //             Padding(
                        //           //               padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.26),
                        //           //               child: const Text(
                        //           //                 "Sign IN",
                        //           //
                        //           //                 style: TextStyle(height: 0.7,
                        //           //                     fontFamily: FontFamilyConstant.aznKnucklesTrial,
                        //           //                     color: Colors.blueAccent,
                        //           //                     fontSize: 18),
                        //           //               ),
                        //           //             ),
                        //           //           ],
                        //           //         ),
                        //           //
                        //           //
                        //           //         colorFilter: const ColorFilter.srgbToLinearGamma(),
                        //           //         image: AssetImage(
                        //           //           ImageAssets.buttonWithIcon,
                        //           //         ),fit: BoxFit.fitWidth,
                        //           //         height:80,
                        //           //         width: MediaQuery.of(context).size.width,
                        //           //       ),
                        //           //     ),
                        //           //   ),
                        //           //   color: Colors.transparent,
                        //           // )
                        //
                        //         ],
                        //       ),
                        //       bottomText: Padding(
                        //         padding: const EdgeInsets.only(top:10,bottom: 0),
                        //         child: Row(
                        //           crossAxisAlignment: CrossAxisAlignment.start,
                        //           mainAxisAlignment: MainAxisAlignment.center,
                        //           children: [
                        //             CommonWidgets.commonText(
                        //               // onClick: (){
                        //               //   Get.to(()=>
                        //               //       SignUpScreen()
                        //               //   );
                        //               // },
                        //                 fontSize: 16,
                        //                 fontWeight: FontWeightConstant.extra_bold,
                        //                 color: ColorConstant.whiteColor,
                        //                 text: "ALREADY HAVE AN ACCOUNT?"
                        //             ),
                        //             const SizedBox(width: 3,),
                        //             CommonWidgets.commonUnderLinedText(
                        //                 underlindWidth: 40,
                        //                 onClick: (){
                        //                   Get.to(()=>const LoginView()
                        //
                        //                     // DragButton()
                        //                   );
                        //                 },
                        //                 fontSize: 15,
                        //                 fontWeight: FontWeightConstant.extra_bold,
                        //                 color: ColorConstant.whiteColor,
                        //                 text: StringConstant.login
                        //             )
                        //
                        //           ],
                        //         ),
                        //       )),
                        // )
                        // // Padding(
                        // //   padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height* 0.36,bottom: 0.0,left: 30,right: 30),
                        // //   child: ClipRect(
                        // //     child:  BackdropFilter(
                        // //       filter:  ImageFilter.blur(sigmaX: 12.0, sigmaY: 8.0),
                        // //       child:  Container(
                        // //           width: MediaQuery.of(context).size.width,
                        // //           height: MediaQuery.of(context).size.height*0.40,
                        // //           decoration:  BoxDecoration(
                        // //             border: Border.all(color: ColorConstant.whiteColor.withOpacity(0.3)),
                        // //             borderRadius: BorderRadius.circular(20),
                        // //
                        // //           ),
                        // //           padding: const EdgeInsets.only(top: 25.0,left: 0,right: 0),
                        // //           child: Column(
                        // //             children: [
                        // //               Expanded(
                        // //                 child: Column(
                        // //                   children: [
                        // //                     CommonWidgets.commonBlurCard(
                        // //                       contentContainerWidth: double.infinity,
                        // //                       contentContainerHeight: MediaQuery.of(context).size.height* 0.34,
                        // //
                        // //                       cardBorderColour: ColorConstant.whiteColor.withOpacity(0.0),
                        // //                       cardBorderRadius: 20,
                        // //                       contentLeftPadding: 25,
                        // //                       contentRightPadding: 25,
                        // //                       contentTopPadding: 25,
                        // //                       contentWidget: Column(
                        // //                         children: [
                        // //                           Container(height: 60,width: double.infinity,color: ColorConstant.whiteColor,),
                        // //                           SizedBox(height: 20,),
                        // //
                        // //                           Container(
                        // //                             height: 60,width: double.infinity,color: ColorConstant.whiteColor,),
                        // //                           SizedBox(height: 20,),
                        // //                           Container(
                        // //                             height: 60,width: double.infinity,color: ColorConstant.whiteColor,)
                        // //                         ],
                        // //                       )
                        // //
                        // //                     )
                        // //
                        // //
                        // //                   ],
                        // //                 ),
                        // //               ),
                        // //
                        // //
                        // //
                        // //
                        // //             ],
                        // //           )
                        // //       ),
                        // //     ),
                        // //   ),
                        // // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}

class StackBackground extends StatefulWidget {
  const StackBackground({Key? key}) : super(key: key);

  @override
  _StackBackgroundState createState() => _StackBackgroundState();
}

class _StackBackgroundState extends State<StackBackground> {


  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageAssets.splash), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          // appBar: AppBar(),// Your app bar
          // backgroundColor: const Color(0xff6ae792),

    body: Padding(
      padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.bottom > 0 ? Get.height* 0.25 : Get.height* 0.5),
      child: SizedBox(
        height: Get.height* 0.4,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20)
            ),
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonWidgets.commonTextFormField(
                obscureText: false,
                // textEditingController: controller.loginState.passwordController,
                hint: StringConstant.password,

                suffixIcon: GestureDetector(
                    onTap: (){
                      Get.to(()=>StackBackground());
                    },
                    child: Icon(Icons.visibility,size: 18,color: Colors.white,)),

                fontWeight: FontWeightConstant.extra_bold,
                prefixIcon: const Icon(Icons.password,size: 16,
                  color: Colors.white,),
                textColor: ColorConstant.whiteColor,

              ),
            SizedBox(height: 20,),
              CommonWidgets.commonTextFormField(
                obscureText: false,
                // textEditingController: controller.loginState.passwordController,
                hint: StringConstant.password,

                suffixIcon: GestureDetector(
                    onTap: (){
                      Get.to(()=>StackBackground());
                    },
                    child: Icon(Icons.visibility,size: 18,color: Colors.white,)),

                fontWeight: FontWeightConstant.extra_bold,
                prefixIcon: const Icon(Icons.password,size: 16,
                  color: Colors.white,),
                textColor: ColorConstant.whiteColor,

              ),
              SizedBox(height: 20,),
              CommonWidgets.commonTextFormField(
                obscureText: false,
                // textEditingController: controller.loginState.passwordController,
                hint: StringConstant.password,

                suffixIcon: GestureDetector(
                    onTap: (){
                      Get.to(()=>StackBackground());
                    },
                    child: Icon(Icons.visibility,size: 18,color: Colors.white,)),

                fontWeight: FontWeightConstant.extra_bold,
                prefixIcon: const Icon(Icons.password,size: 16,
                  color: Colors.white,),
                textColor: ColorConstant.whiteColor,

              ),
            ],
            ),
          ),
        ),
      ),
    ),
    ),
    );
  }
}

