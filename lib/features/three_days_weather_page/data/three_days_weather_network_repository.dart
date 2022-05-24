import 'package:dio/dio.dart';
import 'package:weather_app/features/three_days_weather_page/data/dto/weather_list_dto.dart';
import 'package:weather_app/features/three_days_weather_page/entity/three_days_weather_entity.dart';
import 'package:weather_app/features/three_days_weather_page/repositoty/three_daus_weather_repository.dart';

class ThreeDaysWeatherNetworkRepository extends ThreeDaysWeatherRepository {
  @override
  Future<List<ThreeDaysWeatherEntity>> getWeatherList(
      {required double lon, required double lat}) async {
    try {
      var response = await Dio().get(
          'http://api.openweathermap.org/data/2.5/onecall',
          queryParameters: {
            'lat': '$lat',
            'lon': '$lon',
            'exclude': 'current,minutely,hourly,alerts',
            'units': 'metric',
            'appid': 'db160628b53c7a78501b37e2440b8701',
          });

      return WeatherListDTO.fromJson(response.data).toEntity();
    } catch (e) {
      throw Exception('Some error');
    }
  }
}
