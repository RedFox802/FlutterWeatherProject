// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'three_days_weather_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ThreeDaysWeatherEntity _$$_ThreeDaysWeatherEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ThreeDaysWeatherEntity(
      tempDay: json['tempDay'] as int? ?? 0,
      tempNight: json['tempNight'] as int? ?? 0,
      tempEve: json['tempEve'] as int? ?? 0,
      tempMorn: json['tempMorn'] as int? ?? 0,
      feelsDay: json['feelsDay'] as int? ?? 0,
      feelsNight: json['feelsNight'] as int? ?? 0,
      feelsEve: json['feelsEve'] as int? ?? 0,
      feelsMorn: json['feelsMorn'] as int? ?? 0,
      weatherMain: json['weatherMain'] as String? ?? '',
      weatherDescription: json['weatherDescription'] as String? ?? '',
      windSpeed: json['windSpeed'] as int? ?? 0,
      pressure: json['pressure'] as int? ?? 0,
      humidity: json['humidity'] as int? ?? 0,
      pop: (json['pop'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_ThreeDaysWeatherEntityToJson(
        _$_ThreeDaysWeatherEntity instance) =>
    <String, dynamic>{
      'tempDay': instance.tempDay,
      'tempNight': instance.tempNight,
      'tempEve': instance.tempEve,
      'tempMorn': instance.tempMorn,
      'feelsDay': instance.feelsDay,
      'feelsNight': instance.feelsNight,
      'feelsEve': instance.feelsEve,
      'feelsMorn': instance.feelsMorn,
      'weatherMain': instance.weatherMain,
      'weatherDescription': instance.weatherDescription,
      'windSpeed': instance.windSpeed,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'pop': instance.pop,
    };
