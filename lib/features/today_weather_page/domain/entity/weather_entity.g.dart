// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherEntity _$$_WeatherEntityFromJson(Map<String, dynamic> json) =>
    _$_WeatherEntity(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      lon: (json['lon'] as num?)?.toDouble() ?? 0,
      lat: (json['lat'] as num?)?.toDouble() ?? 0,
      base: json['base'] as String? ?? '',
      visibility: json['visibility'] as int? ?? 0,
      clouds: json['clouds'] as int? ?? 0,
      weatherMain: json['weatherMain'] as String? ?? '',
      weatherDescription: json['weatherDescription'] as String? ?? '',
      windSpeed: (json['windSpeed'] as num?)?.toDouble() ?? 0,
      windDeg: json['windDeg'] as int? ?? 0,
      windGust: (json['windGust'] as num?)?.toDouble() ?? 0,
      temp: (json['temp'] as num?)?.toDouble() ?? 0,
      feelsLike: (json['feelsLike'] as num?)?.toDouble() ?? 0,
      tempMin: (json['tempMin'] as num?)?.toDouble() ?? 0,
      tempMax: (json['tempMax'] as num?)?.toDouble() ?? 0,
      pressure: json['pressure'] as int? ?? 0,
      humidity: json['humidity'] as int? ?? 0,
    );

Map<String, dynamic> _$$_WeatherEntityToJson(_$_WeatherEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lon': instance.lon,
      'lat': instance.lat,
      'base': instance.base,
      'visibility': instance.visibility,
      'clouds': instance.clouds,
      'weatherMain': instance.weatherMain,
      'weatherDescription': instance.weatherDescription,
      'windSpeed': instance.windSpeed,
      'windDeg': instance.windDeg,
      'windGust': instance.windGust,
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
