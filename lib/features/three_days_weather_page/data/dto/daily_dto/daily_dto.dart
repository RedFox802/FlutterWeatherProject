import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/three_days_weather_page/data/dto/temp_dto/temp_dto.dart';
import 'package:weather_app/features/three_days_weather_page/entity/three_days_weather_entity.dart';
import 'package:weather_app/features/today_weather_page/data/dto/weather_dto/weather_dto.dart';

import '../feels_like_dto/feels_like_dto.dart';

part 'daily_dto.g.dart';

@JsonSerializable()
class DailyDTO {
  TempDTO? temp;

  @JsonKey(name: 'feels_like')
  FeelsLikeDTO? feelsLike;

  List<WeatherDTO>? weather;

  @JsonKey(name: 'wind_speed')
  double? windSpeed;
  int? pressure;
  int? humidity;
  double? pop;

  DailyDTO({
    this.windSpeed,
    this.weather,
    this.humidity,
    this.pressure,
    this.feelsLike,
    this.temp,
    this.pop,
  });

  factory DailyDTO.fromJson(Map<String, dynamic> json) =>
      _$DailyDTOFromJson(json);

  ThreeDaysWeatherEntity toEntity() {
    return ThreeDaysWeatherEntity(
      tempDay: temp?.day ?? 0,
      tempEve: temp?.eve ?? 0,
      tempMorn: temp?.morn ?? 0,
      tempNight: temp?.night ?? 0,
      feelsDay: feelsLike?.day ?? 0,
      feelsEve: feelsLike?.eve ?? 0,
      feelsMorn: feelsLike?.morn ?? 0,
      feelsNight: feelsLike?.night ?? 0,
      weatherDescription: weather?.first.description ?? '',
      weatherMain: weather?.first.main ?? '',
      windSpeed: windSpeed ?? 0,
      pop: pop ?? 0,
      pressure: pressure ?? 0,
      humidity: humidity ?? 0,
    );
  }
}
