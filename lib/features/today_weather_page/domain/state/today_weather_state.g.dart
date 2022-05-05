// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_weather_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodayWeatherState _$$_TodayWeatherStateFromJson(Map<String, dynamic> json) =>
    _$_TodayWeatherState(
      loading: json['loading'] as bool? ?? false,
      error: json['error'] as bool? ?? false,
      myWeatherEntity: MyWeatherEntity.fromJson(
          json['myWeatherEntity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TodayWeatherStateToJson(
        _$_TodayWeatherState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'myWeatherEntity': instance.myWeatherEntity,
    };
