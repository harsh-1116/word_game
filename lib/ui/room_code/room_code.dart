import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/src/simple/get_state.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
import 'package:word_game/common/constant/color_constant.dart';
import 'package:word_game/common/constant/image_assets.dart';
import 'package:word_game/ui/room_code/room_code_controller.dart';
import 'package:word_game/ui/two_player/two_player.dart';

import '../../common/constant/font_constant.dart';
import '../../common/constant/string_constant.dart';
import '../../common/widgets/common_widgets.dart';
import '../multiplayer_team/multiplayer_team.dart';

class RoomCode extends StatefulWidget {
  const RoomCode({Key? key}) : super(key: key);

  @override
  _RoomCodeState createState() => _RoomCodeState();
}

class _RoomCodeState extends State<RoomCode> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: RoomCodeController(),
      builder: (RoomCodeController controller){
        return Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(

                image: DecorationImage(
                    image: AssetImage(ImageAssets.splash),fit: BoxFit.cover
                )
            ),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: Get.height * 0.05,left: 20,right: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(ImageAssets.splash),
                      ),
                      SizedBox(width: Get.width * 0.21,),
                      CommonWidgets.commonText(
                          text: StringConstant.twoPlayer,
                          fontWeight: FontWeightConstant.medium,
                          fontSize: Get.width * 0.05,
                          fontFamily:
                          FontFamilyConstant.aznKnucklesTrial),
                      // CircleAvatar(
                      //   backgroundImage: AssetImage(ImageAssets.splash),
                      //
                      //
                      // ),
                    ],
                  ),),
                Stack(

                  children: [
                    CommonWidgets.blurCardWithBottomText(
                        blurCardTopPadding: 25,
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
                        scrollContentBottomPadding: 0,

                        scrollableContent: Column(
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
                                              text: "09129836",
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

                          ],)),
                    Positioned(
                      width: Get.width,
                      bottom: Get.height * 0.035,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(),
                          Container(
                            height: Get.height* 0.16,
                            width: Get.height * 0.16,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(ImageAssets.harsh),fit: BoxFit.cover
                                ),
                                border: Border.all(color: ColorConstant.whiteColor)),
                          ),
                          Container()
                        ],),
                    )
                    // Positioned(
                    // left: Get.width * 0.31,
                    //   bottom: Get.height * 0.033,
                    //   child: Container(
                    //     height: Get.height* 0.20,
                    //     width: Get.height * 0.20,
                    //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    //     image: DecorationImage(
                    //       image: AssetImage(ImageAssets.splash),fit: BoxFit.cover
                    //     ),
                    //     border: Border.all(color: ColorConstant.whiteColor)),
                    //   ),
                    // )
                  ],
                ),
                Transform.translate(
                  offset: Offset(0,-12),
                  child: CommonWidgets.commonText(
                      letterSpacing: 0.1,
                      text: StringConstant.userName,
                      color: Colors.black,
                      fontWeight: FontWeightConstant.extra_bold,
                      fontSize: Get.width * 0.04,
                      fontFamily: FontFamilyConstant.aznKnucklesTrial),),
                SizedBox(height: 4,),
                CommonWidgets.commonText(
                    letterSpacing: 0.1,
                    text: "VS",
                    color: Colors.black,
                    fontWeight: FontWeightConstant.extra_bold,
                    fontSize: Get.width * 0.06,
                    fontFamily: FontFamilyConstant.aznKnucklesTrial),
                SizedBox(height: 30,),
                Container(
                  height: Get.height* 0.16,
                  width: Get.height * 0.16,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(ImageAssets.jigs),fit: BoxFit.cover
                      ),
                      border: Border.all(color: ColorConstant.whiteColor)),

                ),
                SizedBox(height: 17,),
                CommonWidgets.commonText(
                    letterSpacing: 0.1,
                    text: StringConstant.twoPlayer,
                    // color: Colors.black,
                    fontWeight: FontWeightConstant.extra_bold,
                    fontSize: Get.width * 0.04,
                    fontFamily: FontFamilyConstant.aznKnucklesTrial),

                Visibility(
                  visible: Get.height == 800,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 25,vertical: Get.height * 0.05),
                    child: CommonWidgets.submitButton(
                        onclick: (){
                          // controller.doLogin();
                          // Get.to(MultiplayerTeam());
                          Get.to(TwoPlayer());
                        },

                        text: "START CHALLENGE",
                        imagePath: ImageAssets.buttonWithIcon,
                        containerHeight: 80,
                        containerWidth: double.infinity,
                        textLeftPadding: MediaQuery.of(context).size.width*0.27,
                        fontSize:18,
                        textColor: Colors.blueAccent
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
