import 'dart:convert';

// import 'package:dream_stock/models/request/login/login_request.dart';
// import 'package:dream_stock/models/response/login/login_response.dart';


import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../api_service/rest_client.dart';
import '../common/constant/api_constant.dart';


abstract class AuthRepository {
 // Future<ObjectResponse<LoginResponse>> doLogin({required dynamic reqBody});
 // Future<ObjectResponse<LoginResponse>> doLogin();
  Future<Map<String, dynamic>> doLogin(
      {String emailId, String password});
}

class AuthRepositoryImpl extends AuthRepository {
  late RestClient _apiClient;

  AuthRepositoryImpl() {
   _apiClient = Get.find();
  }

  Future<Map<String, dynamic>> doLogin({
    String emailId = "",
    String password = ""}) async{
    var jsonBody = {
      "email": emailId,
      "password": password,
    };
    var response =await _apiClient.request(
        ApiConstant.login, Method.POST, jsonBody);
    //ObjectResponse<LoginResponse>? objectResponse = ObjectResponse.fromJson(response, (json) => response);
    return response;
  }
}
