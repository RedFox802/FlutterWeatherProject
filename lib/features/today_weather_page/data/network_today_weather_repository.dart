import 'package:dio/dio.dart';
import 'package:weather_app/features/today_weather_page/domain/entity/weather_entity.dart';
import 'package:weather_app/features/today_weather_page/repository/today_weather_repository.dart';

import 'dto/today_weather_dto/today_weather_dto.dart';

class TodayWeatherNetworkRepository extends TodayWeatherRepository {
  @override
  Future<WeatherEntity> getWeather({required String city}) async {
    try {
      var response = await Dio().get(
          'http://api.openweathermap.org/data/2.5/weather',
          queryParameters: {
            'q': '${city},ru',
            'units': 'metric',
            'appid': 'db160628b53c7a78501b37e2440b8701',
          });

      return TodayWeatherDTO.fromJson(response.data).toEntity();
    } catch (e) {
      throw Exception('Some error');
    }
  }
}
