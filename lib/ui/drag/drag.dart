import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_game/common/constant/color_constant.dart';
import 'package:word_game/ui/drag/drag_controller.dart';

class DragButton extends StatefulWidget {
  const DragButton({Key? key}) : super(key: key);

  @override
  _DragButtonState createState() => _DragButtonState();
}

class _DragButtonState extends State<DragButton> {

  bool condition = false;
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: DragController(),
        builder: (DragController controller){
      return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*  IgnorePointer(
              ignoring: !controller.dragState.showDraggablee,
              child: Opacity(
                opacity: controller.dragState.showDraggablee ? 1 : 0,
                child:*/ Draggable<String>(
                // Data is the value this Draggable stores.
                data: "Harsh",
                child: condition==false ?Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent.withOpacity(0.3),
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Center(child: const Text("Harsh")),
                ) : Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent.withOpacity(0.3),
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Center(child: Text("")),
                ),
                feedback: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent.withOpacity(0.3),
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Center(child: Text("Harsh")),
                ),
                childWhenDragging: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  height: 60.0,
                  width: 60.0,
                ),
                onDragStarted: () {},
                onDragCompleted: () {},
                onDragEnd: (draggabledetils) {},
                onDraggableCanceled: (velocity, offset) {},
                onDragUpdate: (dragupdatedetails) {},
                maxSimultaneousDrags: 1,
              ),
              /*),
            ),*/
              const SizedBox(
                height: 15,
              ),
              DragTarget<String>(
                onAccept: (data) {
                  setState(() {
                    condition = true;
                  });

                },
                builder: (context, _, __) => condition
                    ? Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent.withOpacity(0.3),
                  ),

                  width: 100,
                  height: 100,
                  child: Center(child: Text("Harsh")),
                )
                    : Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                      border: Border.all(color: Colors.black)
                  ),
                  child: Center(child: Text("")),
                  width: 100,
                  height: 100,
                ),
                // onAccept: (data) {
                //   debugPrint('hi $data');
                //   setState(() {
                //     showSnackBarGlobal(context, 'Dropped successfully!');
                //     _isDropped = true;
                //   });
                // },
                // onWillAccept: (data) {
                //   return data == "_color";
                // },
                // onLeave: (data) {
                //   showSnackBarGlobal(context, 'Missed');
                // },
              ),
            ],
          ));
    });
  }
}

