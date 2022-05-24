// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyDTO _$DailyDTOFromJson(Map<String, dynamic> json) => DailyDTO(
      windSpeed: (json['wind_speed'] as num?)?.toDouble(),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      humidity: json['humidity'] as int?,
      pressure: json['pressure'] as int?,
      feelsLike: json['feels_like'] == null
          ? null
          : FeelsLikeDTO.fromJson(json['feels_like'] as Map<String, dynamic>),
      temp: json['temp'] == null
          ? null
          : TempDTO.fromJson(json['temp'] as Map<String, dynamic>),
      pop: (json['pop'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DailyDTOToJson(DailyDTO instance) => <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'weather': instance.weather,
      'wind_speed': instance.windSpeed,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'pop': instance.pop,
    };
