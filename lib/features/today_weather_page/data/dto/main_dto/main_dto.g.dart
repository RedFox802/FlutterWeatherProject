// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainDTO _$MainDTOFromJson(Map<String, dynamic> json) => MainDTO(
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      humidity: json['humidity'] as int?,
      pressure: json['pressure'] as int?,
      tempMin: (json['temp_min'] as num?)?.toDouble(),
      tempMax: (json['temp_max'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MainDTOToJson(MainDTO instance) => <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
