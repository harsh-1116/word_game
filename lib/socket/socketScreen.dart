import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:word_game/socket/socket_controller.dart';

class SocketIoScreen extends StatelessWidget {
  const SocketIoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SocketController(),
        builder: (SocketController controller){
          return Scaffold(
            body: Text(controller.connectSocket()),
          );
        });
  }
}
