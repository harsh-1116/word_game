import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';



class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  bool colorChange = false;
  
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: DashboardController(),
        builder: (DashboardController controller){
          return Scaffold(
            body: GestureDetector(
                onTap: (){
                  setState(() {
                    colorChange =!colorChange;
                  });
                },
                child: Container(
                  color: colorChange == true ?Colors.black : Colors.pink,
                )),
          );
        });
  }
}
class DashBo extends StatelessWidget {
  const DashBo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

