import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity/weathers_list.dart';

part 'weather_list_state.freezed.dart';

part 'weather_list_state.g.dart';

@freezed
class WeatherListState with _$WeatherListState {
  factory WeatherListState({
    @Default(false) final bool loading,
    @Default(false) final bool error,
    required final WeatherList? weatherList,
  }) = _WeatherListState;

  factory WeatherListState.fromJson(Map<String, dynamic> json) =>
      _$WeatherListStateFromJson(json);
}
