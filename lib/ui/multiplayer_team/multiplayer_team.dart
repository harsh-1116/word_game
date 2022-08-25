import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:word_game/ui/multiplayer_team/multiplayer_team_controller.dart';

import '../../common/constant/color_constant.dart';
import '../../common/constant/font_constant.dart';
import '../../common/constant/image_assets.dart';
import '../../common/constant/string_constant.dart';
import '../../common/widgets/common_widgets.dart';
import '../room_code/room_code_controller.dart';

class MultiplayerTeam extends StatefulWidget {
  const MultiplayerTeam({Key? key}) : super(key: key);

  @override
  _MultiplayerTeamState createState() => _MultiplayerTeamState();
}

class _MultiplayerTeamState extends State<MultiplayerTeam> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: MultiplayerTeamController(),
      builder: (MultiplayerTeamController controller){
        return Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(

                image: DecorationImage(
                    image: AssetImage(ImageAssets.splash),fit: BoxFit.cover
                )
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: Get.height * 0.05,left: 20,right: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(ImageAssets.splash),
                        ),
                        // SizedBox(width: 20,),
                        // CommonWidgets.commonText(
                        //     text: StringConstant.realTimeMultiplayer,
                        //     fontWeight: FontWeightConstant.extra_bold,
                        //     fontSize: Get.width * 0.05,
                        //     fontFamily:
                        //     FontFamilyConstant.aznKnucklesTrial),
                        // CircleAvatar(
                        //   backgroundImage: AssetImage(ImageAssets.splash),
                        //
                        //
                        // ),
                      ],
                    ),),
                  Stack(

                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: Get.height* 0.38),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CommonWidgets.commonText(


                                letterSpacing: 0.1,
                                text: "MULTIPLAYER TEAM",
                                // color: Colors.black,
                                fontWeight: FontWeightConstant.medium,
                                fontSize: Get.width * 0.065,
                                fontFamily: FontFamilyConstant.aznKnucklesTrial),
                          ],
                        ),
                      ),
                      CommonWidgets.blurCardWithBottomText(
                          blurCardTopPadding: Get.height * 0.5,
                          blurCardBottomPadding: Get.height * 0.11,
                          borderRadius: 20,
                          borderColor: ColorConstant.whiteColor.withOpacity(0.3),
                          blurCardRightPadding: 20,
                          blurCardLeftPadding: 20,
                          sigmaX: 15,
                          sigmaY: 4,
                          containerWidth: Get.width,
                          containerHeight: Get.height * 0.25,
                          scrollContentRightPadding: 20,
                          scrollContentLeftPadding: 20,
                          scrollContentTopPadding: 0,
                          scrollContentBottomPadding: 20,

                          scrollableContent: Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CommonWidgets.submitButton(
                                    onclick: (){
                                      // controller.doLogin();
                                      Get.to(MultiplayerTeam());
                                    },

                                    text: "START CHALLENGE",
                                    imagePath: ImageAssets.buttonWithIcon,
                                    containerHeight: 80,
                                    containerWidth: double.infinity,
                                    textLeftPadding: MediaQuery.of(context).size.width*0.27,
                                    fontSize:18,
                                    textColor: Colors.blueAccent
                                ),

                              ],
                            ),
                          ),
                          /*Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(),
                                    Row(
                                      children: [
                                        CommonWidgets.commonText(
                                            text: StringConstant.roomCode,
                                            fontWeight: FontWeightConstant.semi_bold,
                                            fontSize: Get.width * 0.05,
                                            fontFamily:
                                            FontFamilyConstant.aznKnucklesTrial),
                                        SizedBox(width: Get.height * 0.01,),
                                        Container(height: 40,width: Get.width* 0.3,
                                          decoration: BoxDecoration(
                                              color: Colors.greenAccent.withOpacity(0.4),
                                              borderRadius: BorderRadius.circular(20),
                                              border: Border.all(color: Colors.green)
                                          ),
                                          child: Center(
                                            child:  CommonWidgets.commonText(
                                                text: "09127283",
                                                fontWeight: FontWeightConstant.semi_bold,
                                                fontSize: Get.width * 0.05,
                                                fontFamily:
                                                FontFamilyConstant.aznKnucklesTrial),
                                          ),)
                                      ],
                                    ),
                                    Container(child: Icon(Icons.share,color: Colors.white,),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0,left: 10,right: 10),
                                child: CommonWidgets.commonText(
                                    letterSpacing: 0.1,
                                    text: StringConstant.shareCode,
                                    fontWeight: FontWeightConstant.semi_bold,
                                    fontSize: Get.width * 0.04,
                                    fontFamily:
                                    FontFamilyConstant.barlow),
                              ),

                            ],)*/
                      ),
                      Positioned  (
                        width: Get.width,
                        bottom: Get.height * 0.25,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: Get.height* 0.14,
                                  width: Get.height * 0.14,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(ImageAssets.harsh),fit: BoxFit.cover
                                      ),
                                      border: Border.all(color: ColorConstant.whiteColor)),
                                ),
                                SizedBox(width: Get.width * 0.1,),
                                Container(
                                  height: Get.height* 0.14,
                                  width: Get.height * 0.14,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(ImageAssets.jigs),fit: BoxFit.cover
                                      ),
                                      border: Border.all(color: ColorConstant.whiteColor)),
                                ),
                                // Container()
                              ],),
                            SizedBox(height: 1,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              CommonWidgets.commonText(
                                  letterSpacing: 0.1,
                                  text: StringConstant.userName,
                                  // color: Colors.black,
                                  fontWeight: FontWeightConstant.medium,
                                  fontSize: Get.width * 0.04,
                                  fontFamily: FontFamilyConstant.aznKnucklesTrial),

                                Container(width: Get.width * 0.23,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: ColorConstant.whiteColor.withOpacity(0.0)),

                                ),child: Center(child: CommonWidgets.commonText(
                                      letterSpacing: 0.1,
                                      text: "-- VS --",
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeightConstant.medium,
                                      fontSize: Get.width * 0.04,
                                      fontFamily: FontFamilyConstant.aznKnucklesTrial),
                                  ),),


                              CommonWidgets.commonText(
                                  letterSpacing: 0.1,
                                  text: StringConstant.userName,
                                  // color: Colors.black,
                                  fontWeight: FontWeightConstant.medium,
                                  fontSize: Get.width * 0.04,
                                  fontFamily: FontFamilyConstant.aznKnucklesTrial),
                            ],)
                          ],
                        ),
                      )

                    ],
                  ),
                  // Transform.translate(
                  //   offset: Offset(0,-12),
                  //   child: CommonWidgets.commonText(
                  //       letterSpacing: 0.1,
                  //       text: StringConstant.userName,
                  //       color: Colors.black,
                  //       fontWeight: FontWeightConstant.extra_bold,
                  //       fontSize: Get.width * 0.04,
                  //       fontFamily: FontFamilyConstant.aznKnucklesTrial),),
                  // SizedBox(height: 4,),
                  // CommonWidgets.commonText(
                  //     letterSpacing: 0.1,
                  //     text: "VS",
                  //     color: Colors.black,
                  //     fontWeight: FontWeightConstant.extra_bold,
                  //     fontSize: Get.width * 0.06,
                  //     fontFamily: FontFamilyConstant.aznKnucklesTrial),
                  // SizedBox(height: 30,),
                  // Container(
                  //   height: Get.height* 0.16,
                  //   width: Get.height * 0.16,
                  //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  //       image: DecorationImage(
                  //           image: AssetImage(ImageAssets.harsh),fit: BoxFit.cover
                  //       ),
                  //       border: Border.all(color: ColorConstant.whiteColor)),
                  //
                  // ),
                  // SizedBox(height: 17,),
                  // CommonWidgets.commonText(
                  //     letterSpacing: 0.1,
                  //     text: StringConstant.realTimeMultiplayer,
                  //     // color: Colors.black,
                  //     fontWeight: FontWeightConstant.extra_bold,
                  //     fontSize: Get.width * 0.04,
                  //     fontFamily: FontFamilyConstant.aznKnucklesTrial),
                  //
                  // Visibility(
                  //   visible: Get.height == 800,
                  //   child: Padding(
                  //     padding:  EdgeInsets.symmetric(horizontal: 25,vertical: Get.height * 0.05),
                  //     child: CommonWidgets.submitButton(
                  //         onclick: (){
                  //           // controller.doLogin();
                  //           // Get.to(Home());
                  //         },
                  //
                  //         text: "START CHALLENGE",
                  //         imagePath: ImageAssets.buttonWithIcon,
                  //         containerHeight: 80,
                  //         containerWidth: double.infinity,
                  //         textLeftPadding: MediaQuery.of(context).size.width*0.27,
                  //         fontSize:18,
                  //         textColor: Colors.blueAccent
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
