import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_game/ui/drag/drag_state.dart';

class DragController extends GetxController{

  final DragState dragState = DragState();
  bool condition = false;
  late TextEditingController textEditingController;

  @override
  void onInit() {
    dragState.showDraggable();
    textEditingController = TextEditingController();
  }
}