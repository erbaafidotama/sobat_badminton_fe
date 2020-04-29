import 'package:app_sobat/data/provider/gor_api_provider.dart';
import 'package:app_sobat/data/models/gor_model.dart';
// import 'package:app_sobat/models/post_model.dart';

class ApiRepositoryGor {
  ApiProviderGor _provider = ApiProviderGor();

  Future<List<GorModel>> get getDataGorApi =>
      _provider.getDataGorApiAsync();
}
