import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/today_weather_page/data/dto/coord_dto/coord_dto.dart';
import 'package:weather_app/features/today_weather_page/domain/entity/weather_entity.dart';

import '../clouds_dto/clouds_dto.dart';
import '../main_dto/main_dto.dart';
import '../weather_dto/weather_dto.dart';
import '../wind_dto/wind_dto.dart';

part 'today_weather_dto.g.dart';

@JsonSerializable()
class TodayWeatherDTO {
  CoordDTO? coord;
  List<WeatherDTO>? weather;
  String? base;
  MainDTO? main;
  int? visibility;
  WindDTO? wind;
  CloudsDTO? clouds;
  int? dt;
  int? id;
  String? name;

  TodayWeatherDTO({
    this.main,
    this.id,
    this.name,
    this.weather,
    this.coord,
    this.clouds,
    this.wind,
    this.base,
    this.dt,
    this.visibility,
  });

  factory TodayWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$TodayWeatherDTOFromJson(json);

  WeatherEntity toEntity() {
    return WeatherEntity(
      id: id ?? 0,
      name: name ?? '',
      lon: coord?.lon ?? 0,
      lat: coord?.lat ?? 0,
      base: base ?? '',
      visibility: visibility ?? 0,
      clouds: clouds?.all ?? 0,
      weatherMain: weather?.first.main ?? '',
      weatherDescription: weather?.first.description ?? '',
      windSpeed: wind?.speed?.truncate() ?? 0,
      temp: main?.temp?.truncate() ?? 0,
      feelsLike: main?.feelsLike?.truncate() ?? 0,
      tempMax: main?.tempMax?.truncate() ?? 0,
      tempMin: main?.tempMin?.truncate() ?? 0,
      pressure: main?.pressure ?? 0,
      humidity: main?.humidity ?? 0,
    );
  }
}
