import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:word_game/ui/two_player/two_player_%20controller.dart';
import 'package:word_game/common/constant/color_constant.dart';
import 'package:word_game/common/constant/image_assets.dart';
import '../../common/constant/font_constant.dart';
import '../../common/constant/string_constant.dart';
import '../../common/widgets/common_widgets.dart';

class TwoPlayer extends StatefulWidget {
  const TwoPlayer({Key? key}) : super(key: key);

  @override
  _TwoPlayerState createState() => _TwoPlayerState();
}

class _TwoPlayerState extends State<TwoPlayer> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: TwoPlayerController(),
      builder: (TwoPlayerController controller){
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
                      SizedBox(width: Get.width * 0.2,),
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
                CommonWidgets.blurCardWithBottomText(
                    blurCardTopPadding: 25,
                    blurCardBottomPadding: 0,
                    borderRadius: 20,
                    borderColor: ColorConstant.whiteColor.withOpacity(0.3),
                    blurCardRightPadding: 20,
                    blurCardLeftPadding: 20,
                    sigmaX: 15,
                    sigmaY: 10,
                    containerWidth:double.infinity,
                    containerHeight: Get.height * 0.78,
                    scrollContentRightPadding: 20,
                    scrollContentLeftPadding: 20,
                    scrollContentTopPadding: 25,
                    scrollContentBottomPadding: 10,

                    scrollableContent: Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(

                              height: Get.height* 0.16,
                              width: Get.height * 0.16,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(ImageAssets.harsh),fit: BoxFit.cover
                                  ),
                                  border: Border.all(color: ColorConstant.whiteColor)),

                            ),
                            SizedBox(height: 17,),
                            CommonWidgets.commonText(
                                letterSpacing: 0.1,
                                // color: Colors.black,
                                text: "PLAYER 1",
                                fontWeight: FontWeightConstant.medium,
                                fontSize: Get.width * 0.04,
                                fontFamily: FontFamilyConstant.aznKnucklesTrial),
                            SizedBox(height: 20,),
                            Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: ColorConstant.whiteColor.withOpacity(0.3))
                              ),
                              child:  Center(
                                child: CommonWidgets.commonText(
                                    text: "--VS--",
                                    fontWeight: FontWeightConstant.medium,
                                    fontSize: Get.width * 0.05,
                                    fontFamily:
                                    FontFamilyConstant.aznKnucklesTrial),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(

                              height: Get.height* 0.16,
                              width: Get.height * 0.16,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(ImageAssets.jigs),fit: BoxFit.cover
                                  ),
                                  border: Border.all(color: ColorConstant.whiteColor)),

                            ),
                            SizedBox(height: 17,),
                            CommonWidgets.commonText(
                                letterSpacing: 0.1,
                                text: "PLAYER 2",
                                fontWeight: FontWeightConstant.medium,
                                fontSize: Get.width * 0.04,
                                fontFamily: FontFamilyConstant.aznKnucklesTrial),

                          ],
                        ),
                      ),
                    ),
                  bottomWidgetBottomPadding: 50,
                  bottomWidget: CommonWidgets.submitButton(
                      onclick: (){
                        // controller.doLogin();
                        // Get.to(MultiplayerTeam());
                        Get.to(TwoPlayer());
                      },

                      text: "START CHALLENGE",
                      imagePath: ImageAssets.buttonWithIcon,
                      containerHeight: 80,
                      containerWidth: double.infinity,
                      textLeftPadding: MediaQuery.of(context).size.width*0.25,
                      fontSize:18,
                      textColor: Colors.blueAccent
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
