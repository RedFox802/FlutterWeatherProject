// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherListDTO _$WeatherListDTOFromJson(Map<String, dynamic> json) =>
    WeatherListDTO(
      daily: (json['daily'] as List<dynamic>?)
          ?.map((e) => DailyDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherListDTOToJson(WeatherListDTO instance) =>
    <String, dynamic>{
      'daily': instance.daily,
    };
