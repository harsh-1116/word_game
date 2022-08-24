import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common/constant/image_assets.dart';
import '../common/widgets/common_widgets.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
//           Padding(
//             padding: const EdgeInsets.all(58.0),
//             child: CommonWidgets.commonBlurCard(
//                 contentContainerHeight: 300,
//                 contentContainerWidth: 400,
//               blurY: 10,
// blurX: 5,
//               contentTopPadding: 20,
//               contentRightPadding: 20,
//               contentLeftPadding: 20,
//               cardBorderColour: Colors.red,
//               cardBorderRadius: 20,
//               contentWidget: Center(child: Container(
//                 height: 80,
//                 width: 70,
//                 decoration: BoxDecoration(
//                   color: Colors.pink,
//                   shape: BoxShape.circle
//                 ),
//                 child: InkWell(
//                   highlightColor: Colors.blue,
//                   onTap: (){},
//                 ),
//               ))
//
//             ),
//           ),
          SizedBox(height: 25,),
          Material(
            // color: Colors.transparent,
            borderRadius: BorderRadius.circular(00),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(

                child: Center(child: InkWell( onTap: (){

                },child: SvgPicture.asset(ImageAssets.splash))),
                height: 200,width: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
