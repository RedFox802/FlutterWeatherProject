import 'package:weather_app/features/three_days_weather_page/entity/three_days_weather_entity.dart';

abstract class ThreeDaysWeatherRepository {
  Future<List<ThreeDaysWeatherEntity>> getWeatherList({
    required double lon,
    required double lat,
  });
}
