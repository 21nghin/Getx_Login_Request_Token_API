import 'package:dio/dio.dart';
import '../import_screen.dart';

class MockAuthenticationAPI implements AuthenticationAPI {
  @override
  Future<RequestToken> newRequestToken() {
    throw Exception('test error');
  }

  @override
  Future<RequestToken> validateWithLogin({String email, String password, String requestToken}) {
    // TODO: implement validateWithLogin
    throw UnimplementedError();
  }
}

class DependencyInjection {
  static void init() {
    Get.lazyPut(
      () => Dio(
        BaseOptions(
          baseUrl: 'https://api.themoviedb.org/3',
          contentType: Headers.jsonContentType,
          responseType: ResponseType.json,
          validateStatus: (_) => true,
        ),
      ),
    );
    Get.lazyPut(() => AuthenticationAPI());
    Get.lazyPut(() => AuthenticationRepository());
  }
}
