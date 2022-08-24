import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_game/binding/repository_binding.dart';

import '../api_service/rest_client.dart';

class InitialBinding implements Bindings{
  final apiClient = RestClient().init();
  @override
  void dependencies() {
    RepositoryBinding().dependencies();
  }
}