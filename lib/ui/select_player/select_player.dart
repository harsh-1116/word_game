import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:word_game/common/constant/font_constant.dart';

import '../../common/constant/color_constant.dart';
import '../../common/constant/image_assets.dart';
import '../../common/constant/string_constant.dart';
import '../../common/widgets/common_widgets.dart';
import '../dashBoard/dashBoard.dart';
import '../demo.dart';
import '../drag/drag.dart';
import '../home/home.dart';
import '../room_code/room_code.dart';

class SelectPlayer extends StatefulWidget {
  const SelectPlayer({Key? key}) : super(key: key);

  @override
  _SelectPlayerState createState() => _SelectPlayerState();
}

class _SelectPlayerState extends State<SelectPlayer> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(
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
                      backgroundImage: AssetImage(ImageAssets.splash),
                    ),
                    // CircleAvatar(
                    //   backgroundImage: AssetImage(ImageAssets.splash),
                    //
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only( top: MediaQuery.of(context).size.height * 0.40,),

                child: CommonWidgets.blurCardWithoutBottomText(
                  containerHeight: MediaQuery.of(context).size.height * 0.30,
                  containerWidth: double.infinity,
                  // scrollContentBottomPadding: MediaQuery.of(context).size.height * 0.04,
                  scrollContentLeftPadding: 20,
                  scrollContentRightPadding: 20,
                  sigmaX: 45,
                  sigmaY: 10,
                  bottomWidgetBottomPadding: 10,
                  // scrollContentTopPadding: MediaQuery.of(context).size.height * 0.03,
                  blurCardBottomPadding: 10,
                  blurCardLeftPadding: 25,
                  blurCardRightPadding: 25,
                  blurCardTopPadding: 25,
                  borderRadius: 20,
                  borderColor:
                  ColorConstant.whiteColor.withOpacity(0.3),
                  scrollableContent: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      CommonWidgets.submitButton(
                          onclick: () {
                            Get.to(SelectPlayer());
                          },
                          text: "SINGLE PLAYER",
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
                            Get.to(RoomCode());
                          },
                          text: "MULTI PLAYER",
                          imagePath: ImageAssets.buttonWithIcon,
                          containerHeight: 80,
                          containerWidth: double.infinity,
                          textLeftPadding:
                          MediaQuery.of(context).size.width *
                              0.25,
                          fontSize: 18,
                          textColor: Colors.pinkAccent),
                    ],
                  ),

                ),
              ),

            ],
          )),
    );
  }
}

class InkWrapper extends StatelessWidget {
  final Color splashColor;
  final Widget child;
  final VoidCallback onTap;

  InkWrapper({
    required this.splashColor,
    required this.child,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        child,
        Positioned.fill(
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                child: Image.asset(ImageAssets.buttonWithIcon),
                splashColor: splashColor,
                onTap: onTap,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
