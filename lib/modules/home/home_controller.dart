import 'package:getx_login_call_api_and_token/import_screen.dart';

class HomeController extends GetxController {
  final _repository = Get.find<AuthenticationRepository>();

  String _email = '', _password = '';

  void onEmailChange(String email) {
    _email = email;
  }

  void onPasswordChange(String password) {
    _password = password;
  }

  Future<void> onPressed() async {
    try{
      final requestToken = Get.arguments as String; /// call data arguments to from Get.offNamed (event push data Controller)
      print('[REQUEST TOKEN] =======> [ $requestToken ]');
      final RequestToken authRequestToken = await _repository.authWithLogin(
        email: _email,
        password: _password,
        requestToken: requestToken,
      );
    }catch (e){
      print(e);
    }
  }
}
