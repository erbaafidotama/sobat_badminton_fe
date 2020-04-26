import 'package:shared_preferences/shared_preferences.dart';

class Utility {
  static const String TOKEN_ACCESS = "TOKEN_ACCESS";

  static Future<bool> saveTokenAccessPreferences(String value) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setString(TOKEN_ACCESS, value.toString());
  }

  static Future<String> getTokenAccessPreferences() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(TOKEN_ACCESS);
  }
}