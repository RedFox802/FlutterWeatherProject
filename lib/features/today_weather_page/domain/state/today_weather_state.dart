import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity/my_weather_entity.dart';


part 'today_weather_state.freezed.dart';
part 'today_weather_state.g.dart';

@freezed
class TodayWeatherState with _$TodayWeatherState {
  const factory TodayWeatherState({
    @Default(false) final bool loading,
    @Default(false) final bool error,
    required final MyWeatherEntity? myWeatherEntity,
  }) = _TodayWeatherState;
  factory TodayWeatherState.fromJson(Map<String, dynamic> json) =>
      _$TodayWeatherStateFromJson(json);
}
