import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity/three_days_weather_entity.dart';

part 'weather_list_state.freezed.dart';

part 'weather_list_state.g.dart';

@freezed
class WeatherListState with _$WeatherListState {
  factory WeatherListState({
    @Default(false) final bool loading,
    @Default(false) final bool error,
    required final List<ThreeDaysWeatherEntity> weatherList,
  }) = _WeatherListState;

  factory WeatherListState.fromJson(Map<String, dynamic> json) =>
      _$WeatherListStateFromJson(json);
}
