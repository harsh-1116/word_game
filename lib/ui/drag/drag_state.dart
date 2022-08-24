import 'package:flutter/material.dart';

import '../../common/constant/color_constant.dart';

class DragState{
  bool _isDropped = false;
  Color color = ColorConstant.blackColor;
late final showDraggablee;



  showDraggable(){
    showDraggablee = color == Colors.black;
  }

}