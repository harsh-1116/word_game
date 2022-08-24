import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:word_game/common/constant/image_assets.dart';
import 'package:word_game/ui/splash/splash_controller.dart';


class SplashScreen extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashController(),
        builder: (SplashController controller){
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageAssets.blueBackground),fit: BoxFit.cover
              ),
            ),
          );
        });
  }
}
