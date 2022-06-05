import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_entity.freezed.dart';
part 'weather_entity.g.dart';

@freezed
class WeatherEntity with _$WeatherEntity {
  const factory WeatherEntity({
  @Default(0) final int id,
  @Default('') final String name,
  @Default(0) final double lon,
  @Default(0) final double lat,
  @Default('') final String base,
  @Default(0) final int visibility,
  @Default(0) final int clouds,
  @Default('') final String weatherMain,
  @Default('') final String weatherDescription,
  @Default(0) final int windSpeed,
  @Default(0) final int temp,
  @Default(0) final int feelsLike,
  @Default(0) final int tempMin,
  @Default(0) final int tempMax,
  @Default(0) final int pressure,
  @Default(0) final int humidity,
}) = _WeatherEntity;

factory WeatherEntity.fromJson(Map<String, dynamic> json) =>
_$WeatherEntityFromJson(json);
}