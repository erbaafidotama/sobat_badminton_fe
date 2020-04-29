import 'dart:convert';
import 'package:app_sobat/data/models/login_model.dart';
import 'package:dio/dio.dart' as http_dio;

class LoginApiProvider {
  http_dio.Dio dio = http_dio.Dio();

  Future<LoginModel> postLoginApiAsync(String email, String password) async {
    print("INI MASUK LOGIN");

    http_dio.Response response = await dio.post("http://127.0.0.1:5000/login", data: {"email": "monkeybisnis@gmail.com",
	"password": "098765"});
    print("hasil");
    print(response.statusCode);
    if(response.statusCode == 200) {
      final rawData = jsonDecode(jsonEncode(response.data));
      print("rawDATA");
      print(rawData);
      return rawData;
    } else {
      return null;
    }


  }
}