import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:word_game/binding/initial_binding.dart';
import 'package:word_game/common/constant/constant_variable.dart';
import 'package:word_game/common/constant/font_constant.dart';
import 'package:word_game/ui/login/login.dart';
import 'package:word_game/ui/splash/Splash_view.dart';

import 'api_service/rest_client.dart';
import 'common/constant/color_constant.dart';

///

import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/palette.dart';
import 'package:flame_audio/audio_pool.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/widgets.dart' hide Animation;

// void main() {
//   runApp(GameWidget(game: AudioGame()));
// }
//
// /// This example game showcases three possible use cases:
// ///
// /// 1. Use the static FlameAudio class to easily fire a sfx using the default
// /// configs for the button tap.
// /// 2. Uses a custom AudioPool for extremely efficient audio loading and pooling
// /// for tapping elsewhere.
// /// 3. Uses the Bgm utility for background music.
// class AudioGame extends FlameGame with TapDetector {
//   // static Paint black = BasicPalette.black.paint();
//   // static Paint gray = const PaletteEntry(Color(0xFFCCCCCC)).paint();
//   // static TextPaint text = TextPaint(
//   //   style: TextStyle(color: BasicPalette.white.color),
//   // );
//   //
//   late AudioPool pool;
//
//   @override
//   Future<void> onLoad() async {
//     pool = await FlameAudio.createPool(
//       'game_audio.mp3',
//       minPlayers: 3,
//       maxPlayers: 4,
//     );
//     startBgmMusic();
//   }
//
//   // Rect get button => Rect.fromLTWH(20, size.y - 300, size.x - 40, 200);
//
//   void startBgmMusic() {
//     FlameAudio.bgm.initialize(); ///For Pause when App Running In background
//     FlameAudio.bgm.play('game_audio.mp3');
//   }
//   //
//   // void fireOne() {
//   //   FlameAudio.play('game_audio.mp3');
//   // }
//   //
//   // void fireTwo() {
//   //   pool.start();
//   // }
//
//   // @override
//   // void render(Canvas canvas) {
//   //   super.render(canvas);
//   //   canvas.drawRect(size.toRect(), black);
//   //
//   //   text.render(
//   //     canvas,
//   //     '(click anywhere for 1)',
//   //     Vector2(size.x / 2, 200),
//   //     anchor: Anchor.topCenter,
//   //   );
//   //
//   //   canvas.drawRect(button, gray);
//   //
//   //   text.render(
//   //     canvas,
//   //     'click here for 2',
//   //     Vector2(size.x / 2, size.y - 200),
//   //     anchor: Anchor.bottomCenter,
//   //   );
//   // }
//
//   // @override
//   // void onTapDown(TapDownInfo details) {
//   //   if (button.containsPoint(details.eventPosition.game)) {
//   //     fireTwo();
//   //   } else {
//   //     fireOne();
//   //   }
//   // }
// }

///
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  initServices();
  configLoading();
  runApp( const MyApp(),/*GameWidget(game: AudioGame())*/);
}

initServices() async {
  await Get.putAsync<RestClient>(() => RestClient().init());
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.circle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.blueAccent
    ..backgroundColor = ColorConstant.selectedLightGreen
    ..indicatorColor = ColorConstant.whiteColor
    ..textColor = ColorConstant.whiteColor
    ..maskColor = Colors.deepOrange.withOpacity(0.5)
    ..userInteractions = false
    ..dismissOnTap = true;
}

// class AudioGame extends FlameGame with TapDetector {
//   // static Paint black = BasicPalette.black.paint();
//   // static Paint gray = const PaletteEntry(Color(0xFFCCCCCC)).paint();
//   // static TextPaint text = TextPaint(
//   //   style: TextStyle(color: BasicPalette.white.color),
//   // );
//   //
//   late AudioPool pool;
//
//   // @override
//   Future<void> onLoad() async {
//     pool = await FlameAudio.createPool(
//       'game_audio.mp3',
//       minPlayers: 3,
//       maxPlayers: 4,
//     );
//     startBgmMusic();
//   }
//
//   void startBgmMusic() {
//     FlameAudio.bgm.initialize(); ///For Pause when App Running In background
//     FlameAudio.bgm.play('game_audio.mp3');
//   }
//
//
//   // Rect get button => Rect.fromLTWH(20, size.y - 300, size.x - 40, 200);
//
//
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//
//       statusBarColor: Colors.transparent,
//       // systemOverlayStyle: SystemUiOverlayStyle.dark,
//       statusBarIconBrightness: Brightness.dark,
//       systemNavigationBarColor: ColorConstant.blackColor,
//       systemNavigationBarDividerColor: ColorConstant.greyBackground,
//       systemNavigationBarIconBrightness: Brightness.dark,
//     ));
//     return  GetMaterialApp(
//
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         backgroundColor: ColorConstant.greyGradient1,
//         cardColor: ColorConstant.whiteColor,
//         fontFamily: FontFamilyConstant.barlow,
//         brightness: Brightness.light,
//         focusColor: ColorConstant.selectedLightGreen,
//         primarySwatch: Colors.teal,
//         primaryColor: ColorConstant.greenFont,
//         dividerColor: ColorConstant.greyGradient1,
//         hintColor: ColorConstant.greyGradient1,
//       ),
//       home:   SplashScreen(),
//       builder: EasyLoading.init(),
//       initialBinding: InitialBinding(),
//       // getPages: RouteConfig.getPages,
//     );
//   }
// //
// // void fireOne() {
// //   FlameAudio.play('game_audio.mp3');
// // }
// //
// // void fireTwo() {
// //   pool.start();
// // }
//
// // @override
// // void render(Canvas canvas) {
// //   super.render(canvas);
// //   canvas.drawRect(size.toRect(), black);
// //
// //   text.render(
// //     canvas,
// //     '(click anywhere for 1)',
// //     Vector2(size.x / 2, 200),
// //     anchor: Anchor.topCenter,
// //   );
// //
// //   canvas.drawRect(button, gray);
// //
// //   text.render(
// //     canvas,
// //     'click here for 2',
// //     Vector2(size.x / 2, size.y - 200),
// //     anchor: Anchor.bottomCenter,
// //   );
// // }
//
// // @override
// // void onTapDown(TapDownInfo details) {
// //   if (button.containsPoint(details.eventPosition.game)) {
// //     fireTwo();
// //   } else {
// //     fireOne();
// //   }
// // }
// }

// class MyApp extends StatelessWidget {
//    MyApp({Key? key}) : super(key: key);
//
//   late AudioPool pool;
//
//
//
//   Future<void> onLoad() async {
//     pool = await FlameAudio.createPool(
//       'game_audio.mp3',
//       minPlayers: 3,
//       maxPlayers: 4,
//     );
//     startBgmMusic();
//   }
//
//   void startBgmMusic() {
//     FlameAudio.bgm.initialize(); ///For Pause when App Running In background
//     FlameAudio.bgm.play('game_audio.mp3');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//
//       statusBarColor: Colors.transparent,
//       // systemOverlayStyle: SystemUiOverlayStyle.dark,
//       statusBarIconBrightness: Brightness.dark,
//       systemNavigationBarColor: ColorConstant.blackColor,
//       systemNavigationBarDividerColor: ColorConstant.greyBackground,
//       systemNavigationBarIconBrightness: Brightness.dark,
//     ));
//     return  GetMaterialApp(
//
//        debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         backgroundColor: ColorConstant.greyGradient1,
//         cardColor: ColorConstant.whiteColor,
//         fontFamily: FontFamilyConstant.barlow,
//         brightness: Brightness.light,
//         focusColor: ColorConstant.selectedLightGreen,
//         primarySwatch: Colors.teal,
//         primaryColor: ColorConstant.greenFont,
//         dividerColor: ColorConstant.greyGradient1,
//         hintColor: ColorConstant.greyGradient1,
//       ),
//       home:   SplashScreen(),
//       builder: EasyLoading.init(),
//       initialBinding: InitialBinding(),
//       // getPages: RouteConfig.getPages,
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  void initState() {
    if (Constant.musicPause == true){
      if (kDebugMode) {
        print("musicPause = true");
      }
      pauseBgmMusic();
    }
    else {
      if (kDebugMode) {
        print("musicPause = false");
      }
      startBgmMusic();
    }

    super.initState();
  }

  late AudioPool pool;



  // Future<void> onLoad() async {
  //   pool = await FlameAudio.createPool(
  //     'game_audio.mp3',
  //     minPlayers: 3,
  //     maxPlayers: 4,
  //   );
  //   startBgmMusic();
  // }

  void startBgmMusic() {
    if (kDebugMode) {
      print("musicPause = true");
    }
    FlameAudio.bgm.initialize(); ///For Pause when App Running In background
    FlameAudio.bgm.play('flute.mp3');
  }

  void pauseBgmMusic() {
    if (kDebugMode) {
      print("musicPause = false");
    }
    FlameAudio.bgm.initialize(); ///For Pause when App Running In background
    // FlameAudio.bgm.play('game_audio.mp3');
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(

      statusBarColor: Colors.transparent,
      // systemOverlayStyle: SystemUiOverlayStyle.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: ColorConstant.blackColor,
      systemNavigationBarDividerColor: ColorConstant.greyBackground,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return  GetMaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: ColorConstant.greyGradient1,
        cardColor: ColorConstant.whiteColor,
        fontFamily: FontFamilyConstant.barlow,
        brightness: Brightness.light,
        focusColor: ColorConstant.selectedLightGreen,
        primarySwatch: Colors.teal,
        primaryColor: ColorConstant.greenFont,
        dividerColor: ColorConstant.greyGradient1,
        hintColor: ColorConstant.greyGradient1,
        highlightColor: Colors.teal,
        // canvasColor: Colors.pink,
        splashColor: Colors.pinkAccent.withOpacity(0.2),
        // hoverColor: Colors.pink
      ),
      home: SplashScreen(),
      builder: EasyLoading.init(),
      initialBinding: InitialBinding(),
      // getPages: RouteConfig.getPages,
    );
  }

}

