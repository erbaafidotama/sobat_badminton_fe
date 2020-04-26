import 'dart:convert';

import 'package:dio/dio.dart';

Future<dynamic> loginUser(String email, String password) async {
  try {
    var apiURL = "http://127.0.0.1:5000/login";
    Dio dio = Dio();
    print("MASUKKK");
    print(email.toString());
    print(password.toString());
    Response response = await dio.post(apiURL,
        data: {"email": email.toString(), "password": password.toString()});

    print(response.statusCode);

    if (response.statusCode == 200 || response.statusCode == 201) {
      var responseJson = jsonDecode(jsonEncode(response.data));
      print(responseJson);
      return responseJson;
    } else if (response.statusCode == 401) {
      throw Exception("Incorrect Email/Password");
    } else
      throw Exception('Authentication Error');
  } on DioError catch (exception) {
    if (exception == null || exception.toString().contains('SocketException')) {
      throw Exception("Network Error");
    } else if (exception.type == DioErrorType.RECEIVE_TIMEOUT ||
        exception.type == DioErrorType.CONNECT_TIMEOUT) {
      throw Exception(
          "Could'nt connect, please ensure you have a stable network.");
    } else {
      return null;
    }
  }
}
