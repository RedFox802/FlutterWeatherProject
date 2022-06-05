import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class CityStorage {
  Future<String> loadCity() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final json = sharedPreferences.containsKey('current_city')
          ? sharedPreferences.getString('current_city') ?? ''
          : '';
      return jsonDecode(json);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> saveCity({required String city}) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final json = jsonEncode(city);
      await sharedPreferences.setString('current_city', json);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateCity({required String city}) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final json = jsonEncode(city);
      await sharedPreferences.setString('current_city', json);
    } catch (e) {
      rethrow;
    }
  }
}
