import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_city_state.freezed.dart';

part 'choose_city_state.g.dart';

@freezed
class ChooseCityState with _$ChooseCityState {
  const factory ChooseCityState({
    @Default(false) final bool loading,
    @Default(false) final bool error,
    @Default('') final String city,
  }) = _ChooseCityState;

  factory ChooseCityState.fromJson(Map<String, dynamic> json) =>
      _$ChooseCityStateFromJson(json);
}
