import 'dart:convert';
import 'dart:io';

import 'package:app_sobat/models/gor_model.dart';
import 'package:app_sobat/utils_preferences.dart';
// import 'package:app_sobat/models/post_model.dart';
import 'package:dio/dio.dart' as http_dio;

class ApiProviderGor {
  http_dio.Dio dio = http_dio.Dio();

  Future<List<GorModel>> getDataGorApiAsync() async {
    // http_dio.Dio dio = new http_dio.Dio(new http_dio.BaseOptions(
    //     contentType: ContentType.json.toString(),
    //     responseType: http_dio.ResponseType.json));
    var accessToken = await Utility.getTokenAccessPreferences();
    print('access_token');
    print(accessToken);

    dio.options.headers[HttpHeaders.authorizationHeader] = "Bearer $accessToken";
    http_dio.Response response = await dio.get("http://127.0.0.1:5000/gor");
    print("hasil GOR");
    print(response.statusMessage);
    if (response.statusCode == 200) {
      final List rawData = jsonDecode(jsonEncode(response.data));
      List<GorModel> listGorModel =
          rawData.map((f) => GorModel.fromJson(f)).toList();
      return listGorModel;
    } else {
      return null;
    }
  }
}
