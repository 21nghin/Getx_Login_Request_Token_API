import 'package:dio/dio.dart';
import 'package:getx_login_call_api_and_token/import_screen.dart';

class AuthenticationAPI {
  final Dio _dio = Get.find<Dio>();

  Future<RequestToken> newRequestToken() async {
    final response = await _dio.get(
      '/authentication/token/new/',
      queryParameters: {
        "api_key": Constants.THE_MOVIE_DB_API_KEY,
      },
    );
    // print('[API SUCCESS] ==== ${response.data.toString()}');
    return RequestToken.fromJson(response.data);
  }

  Future<RequestToken> validateWithLogin({
    @required String email,
    @required String password,
    @required String requestToken,
  }) async {
    final response = await _dio.post(
      '/authentication/token/validate_with_login',
      queryParameters: {
        "api_key": Constants.THE_MOVIE_DB_API_KEY,
      },
      data: {
        "username": email,
        "password": password,
        "request_token" : requestToken,
      },
    );
    return RequestToken.fromJson(response.data);
  }
}
