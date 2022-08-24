import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:word_game/common/constant/color_constant.dart';
import 'package:word_game/common/constant/image_assets.dart';

import '../../common/constant/font_constant.dart';
import '../../common/constant/string_constant.dart';
import '../../common/widgets/common_widgets.dart';

class RoomCode extends StatefulWidget {
  const RoomCode({Key? key}) : super(key: key);

  @override
  _RoomCodeState createState() => _RoomCodeState();
}

class _RoomCodeState extends State<RoomCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                SizedBox(width: 20,),
                CommonWidgets.commonText(
                    text: StringConstant.realTimeMultiplayer,
                    fontWeight: FontWeightConstant.extra_bold,
                    fontSize: 22,
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
                    blurCardBottomPadding: Get.height * 0.1,
                    borderRadius: 20,
                    borderColor: ColorConstant.whiteColor.withOpacity(0.3),
                    blurCardRightPadding: 20,
                    blurCardLeftPadding: 20,
                    sigmaX: 15,
                    sigmaY: 10,
                    containerWidth: double.infinity,
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
                           CommonWidgets.commonText(
                               text: StringConstant.roomCode,
                               fontWeight: FontWeightConstant.extra_bold,
                               fontSize: 18,
                               fontFamily:
                               FontFamilyConstant.aznKnucklesTrial),
                           Container(),
                         ],
                       ),
                     ),

                    ],)),
                Positioned(
                left: Get.width * 0.328,
                  bottom: Get.height * 0.033,
                  child: Container(
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(ImageAssets.splash),fit: BoxFit.cover
                    ),
                    border: Border.all(color: ColorConstant.whiteColor)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
