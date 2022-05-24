// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherListState _$$_WeatherListStateFromJson(Map<String, dynamic> json) =>
    _$_WeatherListState(
      loading: json['loading'] as bool? ?? false,
      error: json['error'] as bool? ?? false,
      weatherList: (json['weatherList'] as List<dynamic>)
          .map(
              (e) => ThreeDaysWeatherEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherListStateToJson(_$_WeatherListState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'weatherList': instance.weatherList,
    };
