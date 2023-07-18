import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences preferences;

  static Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  static SharedPreferences get instance {
    return preferences;
  }
}
