import 'package:freezed_annotation/freezed_annotation.dart';

part 'three_days_weather_entity.freezed.dart';

part 'three_days_weather_entity.g.dart';

@freezed
class ThreeDaysWeatherEntity with _$ThreeDaysWeatherEntity {
  const factory ThreeDaysWeatherEntity({
    @Default(0) final int tempDay,
    @Default(0) final int tempNight,
    @Default(0) final int tempEve,
    @Default(0) final int tempMorn,
    @Default(0) final int feelsDay,
    @Default(0) final int feelsNight,
    @Default(0) final int feelsEve,
    @Default(0) final int feelsMorn,
    @Default('') final String weatherMain,
    @Default('') final String weatherDescription,
    @Default(0) final int windSpeed,
    @Default(0) final int pressure,
    @Default(0) final int humidity,
    @Default(0) final double pop,
  }) = _ThreeDaysWeatherEntity;

  factory ThreeDaysWeatherEntity.fromJson(Map<String, dynamic> json) =>
      _$ThreeDaysWeatherEntityFromJson(json);
}
