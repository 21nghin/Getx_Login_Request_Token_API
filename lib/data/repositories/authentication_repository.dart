import 'package:getx_login_call_api_and_token/import_screen.dart';

class AuthenticationRepository {
  final AuthenticationAPI _api = Get.find<AuthenticationAPI>();

  Future<RequestToken> newRequestToken() => _api.newRequestToken();

  Future<RequestToken> authWithLogin({
    @required String email,
    @required String password,
    @required String requestToken,
  }) =>
      _api.validateWithLogin(
          email: email, password: password, requestToken: requestToken);
}
