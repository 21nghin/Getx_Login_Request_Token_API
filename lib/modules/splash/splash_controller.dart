// import 'package:getx_login_call_api_and_token/import_screen.dart';

import 'package:get/get.dart';
import 'package:getx_login_call_api_and_token/data/models/request_token.dart';
import 'package:getx_login_call_api_and_token/data/repositories/authentication_repository.dart';
import 'package:getx_login_call_api_and_token/routes/app_const_routes.dart';

class SplashController extends GetxController {
  final AuthenticationRepository _repository =
      Get.find<AuthenticationRepository>();

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  void _init() async {
    try {
      RequestToken requestToken = await _repository.newRequestToken();
      Get.offNamed(AppConstRoutes.HOME, arguments: requestToken.requestToken);
      print('[REQUEST TOKEN] =======> ${requestToken.requestToken}');
    } catch (e) {
      print(e);
    }
  }
}
