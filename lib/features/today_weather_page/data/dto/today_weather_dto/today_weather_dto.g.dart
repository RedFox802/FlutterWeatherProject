// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodayWeatherDTO _$TodayWeatherDTOFromJson(Map<String, dynamic> json) =>
    TodayWeatherDTO(
      main: json['main'] == null
          ? null
          : MainDTO.fromJson(json['main'] as Map<String, dynamic>),
      id: json['id'] as int?,
      name: json['name'] as String?,
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      coord: json['coord'] == null
          ? null
          : CoordDTO.fromJson(json['coord'] as Map<String, dynamic>),
      clouds: json['clouds'] == null
          ? null
          : CloudsDTO.fromJson(json['clouds'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? null
          : WindDTO.fromJson(json['wind'] as Map<String, dynamic>),
      base: json['base'] as String?,
      dt: json['dt'] as int?,
      visibility: json['visibility'] as int?,
    );

Map<String, dynamic> _$TodayWeatherDTOToJson(TodayWeatherDTO instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'base': instance.base,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'dt': instance.dt,
      'id': instance.id,
      'name': instance.name,
    };
