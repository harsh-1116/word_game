import 'dart:js';

import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:get/get.dart';

import '../model/message.dart';
import 'home_provider.dart';

class SocketController extends GetxController{
late IO.Socket _socket;
final TextEditingController messageInputController = TextEditingController();

  @override
  void onInit() {
    // _socket = IO.io('http://localhost:3000', IO.OptionBuilder().setTransports(["webSocket"]).setQuery(
    //     {'userName' : username}).build());
    connectSocket();

  }

  sendMessage(){
    _socket.emit('message',{
      'message' : messageInputController.text.trim()
    });

  }

  connectSocket(){
    _socket.onConnect((data) => print('connection Established'));
    _socket.onDisconnect((data) => print('Socket.io server disconnected'));
    _socket.onConnectError((data) => print('Connect Error: $data'));
    // _socket.on('message', (data) => Provider.of<HomeProvider>(context, listen : false).addNewMessage(
    //   Message.fromJson(data),
    // ));

  }

}