import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_entity.freezed.dart';
part 'weather_entity.g.dart';

@freezed
class WeatherEntity with _$WeatherEntity {
  const factory WeatherEntity({
    @Default('') final String city,
    @Default('') final String main,
    @Default('') final String description,
    @Default(0) final double temp,
    @Default(0) final double feelsLike,
    @Default(0) final double tempMin,
    @Default(0) final double tempMax,
    @Default(0) final double pressure,
    @Default(0) final double humidity,
    @Default(0) final double speedWind,
    @Default(0) final double degWind,
    @Default(0) final double gustWind,
  }) = _WeatherEntity;

  factory WeatherEntity.fromJson(Map<String, dynamic> json) =>
      _$WeatherEntityFromJson(json);
}
