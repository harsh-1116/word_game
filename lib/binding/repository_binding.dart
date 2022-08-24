import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import '../repository/auth_repository.dart';

class RepositoryBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(
            () => AuthRepositoryImpl());
  }
  }

