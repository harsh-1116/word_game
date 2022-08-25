import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/constant/color_constant.dart';
import '../../common/constant/font_constant.dart';
import '../../common/constant/image_assets.dart';
import '../../common/constant/string_constant.dart';
import '../../common/widgets/common_widgets.dart';
import '../dashBoard/dashBoard.dart';
import '../demo.dart';
import '../drag/drag.dart';
import '../login/login.dart';
import '../select_player/select_player.dart';
import 'home_controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomeController(),
        builder: (HomeController controller) {
          return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageAssets.splash), fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 45.0, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          child:Container(
                            decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 0.5),borderRadius: BorderRadius.circular(50),),
                          ),
                          backgroundImage: AssetImage(ImageAssets.harsh),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(ImageAssets.setting),

                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.35, /*bottom: 60.0,left: 30,right: 30*/
                      ),
                      child: CommonWidgets.blurCardWithoutBottomText(
                        containerHeight: MediaQuery.of(context).size.height * 0.39  ,
                        containerWidth: double.infinity,
                        scrollContentBottomPadding: 0,
                        scrollContentLeftPadding: 20,
                        scrollContentRightPadding: 20,
                        sigmaX: 45,
                        sigmaY: 10,
                        bottomWidgetBottomPadding: 0,
                        scrollContentTopPadding: 0,
                        blurCardBottomPadding: 0,
                        blurCardLeftPadding: 25,
                        blurCardRightPadding: 25,
                        blurCardTopPadding: 25,
                        borderRadius: 20,
                        borderColor:
                        ColorConstant.whiteColor.withOpacity(0.3),
                        scrollableContent: Column(
                          children: [
                            CommonWidgets.submitButton(
                                onclick: () {
                                  Get.to(SelectPlayer());
                                },
                                text: "SELECT PLAYER",
                                imagePath: ImageAssets.buttonWithIcon,
                                containerHeight: 80,
                                containerWidth: double.infinity,
                                textLeftPadding:
                                MediaQuery.of(context).size.width *
                                    0.25,
                                fontSize: 18,
                                textColor: Colors.blueAccent),
                            CommonWidgets.submitButton(
                                onclick: () {
                                  // Get.to(Home());
                                },
                                text: "READ TUTORIAL",
                                imagePath: ImageAssets.buttonWithIcon,
                                containerHeight: 80,
                                containerWidth: double.infinity,
                                textLeftPadding:
                                MediaQuery.of(context).size.width *
                                    0.25,
                                fontSize: 18,
                                textColor: Colors.pinkAccent),
                            CommonWidgets.submitButton(
                                onclick: () {
                                  // Get.to(Home());
                                },
                                text: "REVIEW RULES",
                                imagePath: ImageAssets.buttonWithIcon,
                                containerHeight: 80,
                                containerWidth: double.infinity,
                                textLeftPadding:
                                MediaQuery.of(context).size.width *
                                    0.25,
                                fontSize: 18,
                                textColor: Colors.green),
                          ],
                        ),

                      )
                    // ClipRect(
                    //   child:  BackdropFilter(
                    //     filter:  ImageFilter.blur(sigmaX: 12.0, sigmaY: 8.0),
                    //     child:  Container(
                    //         width: MediaQuery.of(context).size.width,
                    //         height: MediaQuery.of(context).size.height*0.6,
                    //         decoration:  BoxDecoration(
                    //           border: Border.all(color: ColorConstant.whiteColor.withOpacity(0.3)),
                    //           borderRadius: BorderRadius.circular(20),
                    //
                    //         ),
                    //         padding: const EdgeInsets.only(top: 25.0,left: 25,right: 25),
                    //         child: Column(
                    //           children: [
                    //             Expanded(
                    //               child: SingleChildScrollView(
                    //                 primary: true,
                    //
                    //                 child: Column(
                    //                   children: [
                    //                     // CommonWidgets.commonText(
                    //                     //   text: "SIGN UP",
                    //                     //   fontSize: 22,
                    //                     //   fontWeight: FontWeightConstant.extra_bold,
                    //                     //   color: ColorConstant.whiteColor,
                    //                     //   height: 1.2,
                    //                     //
                    //                     // ),
                    //                     CommonWidgets.commonText(
                    //                       text: "SIGN UP",
                    //                       fontSize: 26,
                    //                       fontWeight: FontWeightConstant.extra_bold,
                    //                       color: ColorConstant.whiteColor,
                    //                       height: 1.2,
                    //
                    //                     ),
                    //
                    //
                    //                     Container(
                    //                       padding: EdgeInsets.only(top: 20),
                    //                       child: CommonWidgets.commonTextFormField(
                    //                         hint: StringConstant.name,
                    //                         textEditingController: controller.signupState.nameController,
                    //
                    //                         fontWeight: FontWeightConstant.extra_bold,
                    //                         prefixIcon: const Icon(Icons.android_outlined,size: 16,
                    //                           color: Colors.white,),
                    //                         textColor: ColorConstant.whiteColor,
                    //
                    //                       ),
                    //                     ),
                    //                     Container(
                    //                       padding: EdgeInsets.only(top: 20),
                    //                       child: CommonWidgets.commonTextFormField(
                    //                         textEditingController: controller.signupState.usernameController,
                    //                         hint: StringConstant.userName,
                    //
                    //                         fontWeight: FontWeightConstant.extra_bold,
                    //                         prefixIcon: const Icon(Icons.android_outlined,size: 16,
                    //                           color: Colors.white,),
                    //                         textColor: ColorConstant.whiteColor,
                    //
                    //                       ),
                    //                     ),
                    //                     Container(
                    //
                    //                       padding: EdgeInsets.only(top: 20),
                    //                       child: CommonWidgets.commonTextFormField(
                    //                         scrollpadding: 500,
                    //                         textEditingController: controller.signupState.emailController,
                    //                         hint: StringConstant.email,
                    //
                    //                         fontWeight: FontWeightConstant.extra_bold,
                    //                         prefixIcon: const Icon(Icons.email,size: 16,
                    //                           color: Colors.white,),
                    //                         textColor: ColorConstant.whiteColor,
                    //
                    //                       ),
                    //                     ),
                    //                     Container(
                    //                       padding: EdgeInsets.only(top: 20),
                    //                       child: CommonWidgets.commonTextFormField(
                    //                         textEditingController: controller.signupState.passwordController,
                    //                         hint: StringConstant.password,
                    //                         suffixIcon: Icon(Icons.visibility,size: 18,color: Colors.white,),
                    //
                    //                         fontWeight: FontWeightConstant.extra_bold,
                    //                         prefixIcon: const Icon(Icons.password,size: 16,
                    //                           color: Colors.white,),
                    //                         textColor: ColorConstant.whiteColor,
                    //
                    //                       ),
                    //                     ),
                    //                     Container(
                    //                       padding: EdgeInsets.only(top: 20),
                    //                       child: CommonWidgets.commonTextFormField(
                    //                         textEditingController: controller.signupState.confirmPasswordController,
                    //                         hint: StringConstant.confirmPassword,
                    //                         suffixIcon: Icon(Icons.visibility,size: 18,color: Colors.white,),
                    //
                    //                         fontWeight: FontWeightConstant.extra_bold,
                    //                         prefixIcon: const Icon(Icons.password,size: 16,
                    //                           color: Colors.white,),
                    //                         textColor: ColorConstant.whiteColor,
                    //
                    //                       ),
                    //                     ),
                    //
                    //                   ],
                    //                 ),
                    //               ),
                    //             ),
                    //             bottomText()
                    //
                    //
                    //           ],
                    //         )
                    //     ),
                    //   ),
                    // ),
                  ),

                ],
              ));
        });
  }
}
