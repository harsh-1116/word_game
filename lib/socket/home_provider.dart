import 'package:flutter/material.dart';

import 'package:socket_io_client/socket_io_client.dart';
import 'package:word_game/model/message.dart';

class HomeProvider extends ChangeNotifier{
  final List<Message> _messages =[];

  List<Message> get message => _messages;

  addNewMessage(Message message){
    _messages.add(message);
    notifyListeners();
  }
}