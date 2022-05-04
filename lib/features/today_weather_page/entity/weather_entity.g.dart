// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherEntity _$$_WeatherEntityFromJson(Map<String, dynamic> json) =>
    _$_WeatherEntity(
      city: json['city'] as String? ?? '',
      main: json['main'] as String? ?? '',
      description: json['description'] as String? ?? '',
      temp: (json['temp'] as num?)?.toDouble() ?? 0,
      feelsLike: (json['feelsLike'] as num?)?.toDouble() ?? 0,
      tempMin: (json['tempMin'] as num?)?.toDouble() ?? 0,
      tempMax: (json['tempMax'] as num?)?.toDouble() ?? 0,
      pressure: (json['pressure'] as num?)?.toDouble() ?? 0,
      humidity: (json['humidity'] as num?)?.toDouble() ?? 0,
      speedWind: (json['speedWind'] as num?)?.toDouble() ?? 0,
      degWind: (json['degWind'] as num?)?.toDouble() ?? 0,
      gustWind: (json['gustWind'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_WeatherEntityToJson(_$_WeatherEntity instance) =>
    <String, dynamic>{
      'city': instance.city,
      'main': instance.main,
      'description': instance.description,
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'speedWind': instance.speedWind,
      'degWind': instance.degWind,
      'gustWind': instance.gustWind,
    };
