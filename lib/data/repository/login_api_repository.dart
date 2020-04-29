import 'package:app_sobat/data/provider/login_api_provider.dart';
import 'package:app_sobat/data/models/login_model.dart';
import 'package:dio/dio.dart' as http_dio;

class LoginApiRepository {
  http_dio.Dio dio = http_dio.Dio();
  LoginApiProvider _provider = LoginApiProvider();

  // Future<LoginModel> postLoginApi => _provider.postLoginApiAsync();

  // Future<List<LoginModel>> get postLoginApi => _provider.postLoginApiAsync();

  Future<LoginModel> postLoginApi(String email, String password) => _provider.postLoginApiAsync(email, password);
}
