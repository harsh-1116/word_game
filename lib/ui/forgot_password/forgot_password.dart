import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:word_game/common/constant/font_constant.dart';
import 'package:word_game/common/constant/image_assets.dart';
import 'package:word_game/common/constant/string_constant.dart';
import 'package:word_game/common/widgets/common_widgets.dart';
import 'package:word_game/ui/forgot_password/forgot_password_controller.dart';
import 'package:word_game/ui/home/home.dart';

import '../../common/constant/color_constant.dart';
import '../login/login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    double viewInsetsHeight = Get.height* 0.28;
    return GetBuilder(
      init: ForgotPasswordController(),
      builder: (ForgotPasswordController controller) {
        return Scaffold(
          // appBar: AppBar(
          //   leading: ,
          // ),

          resizeToAvoidBottomInset: false,
          body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageAssets.splash),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.18),
                    child: CommonWidgets.blurCardWithBottomText(
                      containerHeight:
                          MediaQuery.of(context).size.height * 0.58,
                      containerWidth: double.infinity,
                      scrollContentBottomPadding: 10,
                      scrollContentLeftPadding: 20,
                      scrollContentRightPadding: 20,
                      scrollContentTopPadding: 30,

                      sigmaX: 10,
                      sigmaY: 5,
                      bottomWidgetBottomPadding: 10,

                      blurCardBottomPadding: 30,

                      blurCardLeftPadding: 25,
                      blurCardRightPadding: 25,

                      borderRadius: 20,
                      borderColor: ColorConstant.whiteColor.withOpacity(0.3),
                      scrollableContent: Expanded(
                        child: SingleChildScrollView(
                          // physics: NeverScrollableScrollPhysics(),

                          child: Column(
                            children: [

                              Padding(
                                padding:  EdgeInsets.only(
                                    top:  Get.height* 0.005,bottom: MediaQuery.of(context).viewInsets.bottom > 0  ? 5 : 0),
                                child:  CommonWidgets.commonText(
                                          text: StringConstant.forgotPassword,
                                          fontWeight: FontWeightConstant.extra_bold,
                                          fontSize: 22,
                                          fontFamily:
                                              FontFamilyConstant.aznKnucklesTrial),
                              ),


                        Container(
                                padding: EdgeInsets.only(top: 15),
                                child: CommonWidgets.commonText(
                                    text:
                                        "There is an example on flutter documentation wrapping this code with Ink.image. That is only accepting other image types and not svg.",
                                    fontWeight: FontWeightConstant.medium,
                                    fontSize: 16,
                                    fontFamily: FontFamilyConstant.barlow),
                              ),
                              Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Image.asset(ImageAssets.splash,
                                      height: 80)),
                              Container(

                                padding: EdgeInsets.only(top: 20),
                                child: CommonWidgets.commonTextFormField(
                                  scrollpadding: 500,
                                  // textEditingController: controller
                                  //     .signupState.confirmPasswordController,
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

                                padding: EdgeInsets.only(top: 10,bottom: MediaQuery.of(context).
                                viewInsets.bottom > 0 ? viewInsetsHeight - 40 : 20),
                                child: CommonWidgets.submitButton(
                                    onclick: () {
                                      Get.to(Home());
                                    },
                                    text: "SUBMIT",
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
                          // Column(
                          //   children: [
                          //     CommonWidgets.commonText(
                          //         text: StringConstant.forgotPassword,
                          //         fontWeight: FontWeightConstant.extra_bold,
                          //         fontSize: 22,
                          //         fontFamily:
                          //             FontFamilyConstant.aznKnucklesTrial),
                          //     Container(
                          //       padding: EdgeInsets.only(top: 15),
                          //       child: CommonWidgets.commonText(
                          //           text:
                          //               "There is an example on flutter documentation wrapping this code with Ink.image. That is only accepting other image types and not svg.",
                          //           fontWeight: FontWeightConstant.medium,
                          //           fontSize: 16,
                          //           fontFamily: FontFamilyConstant.barlow),
                          //     ),
                          //     Container(
                          //         padding: EdgeInsets.only(top: 20),
                          //         child: Image.asset(ImageAssets.splash,
                          //             height: 80)),
                          //     Container(
                          //       padding: EdgeInsets.only(top: 40),
                          //       child: CommonWidgets.commonTextFormField(
                          //         hint: StringConstant.email,
                          //         textEditingController: controller
                          //             .forgotPassWordState.emailController,
                          //         fontWeight: FontWeightConstant.extra_bold,
                          //         prefixIcon: const Icon(
                          //           Icons.email,
                          //           size: 16,
                          //           color: Colors.white,
                          //         ),
                          //         textColor: ColorConstant.whiteColor,
                          //       ),
                          //     ),
                          //
                          //     Padding(
                          //       padding: EdgeInsets.only(top: 10,bottom: MediaQuery.of(context).
                          //       viewInsets.bottom > 0 ? viewInsetsHeight - 40 : 2),
                          //       child: CommonWidgets.submitButton(
                          //           onclick: () {
                          //           },
                          //           text: "SUBMIT",
                          //           imagePath: ImageAssets.buttonWithIcon,
                          //           containerHeight: 80,
                          //           containerWidth: double.infinity,
                          //           textLeftPadding:
                          //               MediaQuery.of(context).size.width *
                          //                   0.25,
                          //           fontSize: 18,
                          //           textColor: Colors.blueAccent),
                          //     ),
                          //     Container(
                          //       height: 50,
                          //       width: 50,
                          //     )
                          //   ],
                          // ),
                        ),

                      ),
                    //    bottomText: Padding(
                    //   padding: const EdgeInsets.only(top:10,bottom: 0),
                    //   child: Row(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       CommonWidgets.commonText(
                    //         // onClick: (){
                    //         //   Get.to(()=>
                    //         //       SignUpScreen()
                    //         //   );
                    //         // },
                    //           fontSize: MediaQuery.of(context).size.width*0.03,
                    //           fontWeight: FontWeightConstant.extra_bold,
                    //           color: ColorConstant.whiteColor,
                    //           text: "ALREADY HAVE AN ACCOUNT?"
                    //       ),
                    //       const SizedBox(width: 3,),
                    //       CommonWidgets.commonUnderLinedText(
                    //           underlindWidth: Get.width*0.10,
                    //           onClick: (){
                    //             Get.to(()=>const LoginView()
                    //
                    //               // DragButton()
                    //             );
                    //           },
                    //           fontSize: Get.width*0.03,
                    //           fontWeight: FontWeightConstant.extra_bold,
                    //           color: ColorConstant.whiteColor,
                    //           text: StringConstant.login
                    //       )
                    //
                    //     ],
                    //   ),
                    // ),
                      // bottomText: Padding(
                      //   padding: const EdgeInsets.only(top:10,bottom: 0),
                      //   child: Row(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       CommonWidgets.commonText(
                      //         // onClick: (){
                      //         //   Get.to(()=>
                      //         //       SignUpScreen()
                      //         //   );
                      //         // },
                      //           fontSize: 16,
                      //           fontWeight: FontWeightConstant.extra_bold,
                      //           color: ColorConstant.whiteColor,
                      //           text: "ALREADY HAVE AN ACCOUNT?"
                      //       ),
                      //       const SizedBox(width: 3,),
                      //       CommonWidgets.commonUnderLinedText(
                      //           underlindWidth: 40,
                      //           onClick: (){
                      //             // Get.to(()=>const SignupView()
                      //
                      //               // DragButton());
                      //           },
                      //           fontSize: 15,
                      //           fontWeight: FontWeightConstant.extra_bold,
                      //           color: ColorConstant.whiteColor,
                      //           text: StringConstant.signUp
                      //       )
                      //
                      //     ],
                      //   ),
                      // )
                    ),
                  ),
                  // Padding(
                  //   padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height* 0.20,bottom: 60.0,left: 30,right: 30),
                  //   child: CommonWidgets.commonBlurCard(
                  //
                  //
                  //       cardBorderColour: ColorConstant.whiteColor.withOpacity(0.3),
                  //       cardBorderRadius: 20,
                  //       contentLeftPadding: 25,
                  //       contentRightPadding: 25,
                  //       contentTopPadding: 25,
                  //       blurX: 6,
                  //       blurY: 8,
                  //       contentContainerHeight: MediaQuery.of(context).size.height * 0.5,
                  //       contentContainerWidth: MediaQuery.of(context).size.width,
                  //       contentWidget: Column(
                  //         children: [
                  //           CommonWidgets.commonText(
                  //               text: StringConstant.forgotPassword,
                  //               fontWeight: FontWeightConstant.extra_bold,
                  //               fontSize: 24,
                  //               fontFamily: FontFamilyConstant.barlow
                  //           ),
                  //           Container(
                  //             padding: EdgeInsets.only(top: 15),
                  //             child: CommonWidgets.commonText(
                  //                 text: "akhsgdjkabsxjubh  ailodhsioa dshioas  iahsdiahsiodhykl aisdhji jabhsjudghyau ioahsd ",
                  //                 fontWeight: FontWeightConstant.medium,
                  //                 fontSize: 16,
                  //                 fontFamily: FontFamilyConstant.barlow
                  //             ),
                  //           ),
                  //           Container(
                  //               padding: EdgeInsets.only(top: 20),
                  //               child: Image.asset(ImageAssets.splash,height: 80)
                  //           ),
                  //           Container(
                  //             padding: EdgeInsets.only(top: 40),
                  //             child: CommonWidgets.commonTextFormField(
                  //               hint: StringConstant.email,
                  //               textEditingController: controller.forgotPassWordState.emailController,
                  //
                  //               fontWeight: FontWeightConstant.extra_bold,
                  //               prefixIcon: const Icon(Icons.email,size: 16,
                  //                 color: Colors.white,),
                  //               textColor: ColorConstant.whiteColor,
                  //
                  //             ),
                  //           ),
                  //
                  //
                  //
                  //         ],
                  //       )
                  //
                  //
                  //   ),
                  // ),
                ],
              )),
        );
      },
    );
  }
}

///
// Column(
// children: [
// CommonWidgets.commonText(
// text: StringConstant.forgotPassword,
// fontWeight: FontWeightConstant.extra_bold,
// fontSize: 22,
// fontFamily: FontFamilyConstant.aznKnucklesTrial
// ),
// Container(
// padding: EdgeInsets.only(top: 15),
// child: CommonWidgets.commonText(
// text: "There is an example on flutter documentation wrapping this code with Ink.image. That is only accepting other image types and not svg.",
// fontWeight: FontWeightConstant.medium,
// fontSize: 16,
// fontFamily: FontFamilyConstant.barlow
// ),
// ),
// Container(
// padding: EdgeInsets.only(top: 20),
// child: Image.asset(ImageAssets.splash,height: 80)
// ),
// Container(
// padding: EdgeInsets.only(top: 40),
// child: CommonWidgets.commonTextFormField(
// hint: StringConstant.email,
// textEditingController: controller.forgotPassWordState.emailController,
//
// fontWeight: FontWeightConstant.extra_bold,
// prefixIcon: const Icon(Icons.email,size: 16,
// color: Colors.white,),
// textColor: ColorConstant.whiteColor,
//
// ),
// ),
// SizedBox(
// height: 15,
// ),
// Padding(
// padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom > 0 ?
// Get.height * 0.6 :8.0),
// child: CommonWidgets.submitButton(
// onclick: (){
// // Get.to(Home());
// },
//
// text: "SUBMIT",
// imagePath: ImageAssets.buttonWithIcon,
// containerHeight: 80,
// containerWidth: double.infinity,
// textLeftPadding: MediaQuery.of(context).size.width*0.25,
// fontSize:18,
// textColor: Colors.blueAccent
// ),
// ),
// Container(height: 20,width: 50,)
//
//
//
// ],
// ),
///
