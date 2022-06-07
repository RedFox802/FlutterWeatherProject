import 'package:shared_preferences/shared_preferences.dart';

class CityStorage {
  Future<String> loadCity() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final json = sharedPreferences.containsKey('current_city')
          ? sharedPreferences.getString('current_city') ?? ''
          : '';
      return json;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> saveCity({required String city}) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.setString('current_city', city);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> saveCityList({required List<String> cityList}) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.setStringList('city_list', cityList);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<String>> loadCityList() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();

      final cityList = sharedPreferences.containsKey('city_list')
          ? sharedPreferences.getStringList('city_list')
          : null;

      return cityList ?? [];
    } catch (e) {
      rethrow;
    }
  }
}
