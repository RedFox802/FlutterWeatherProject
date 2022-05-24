import '../domain/entity/weather_entity.dart';

abstract class TodayWeatherRepository {
  Future<WeatherEntity> getWeather({required String city});
}
