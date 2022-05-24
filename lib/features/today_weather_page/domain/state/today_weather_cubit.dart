import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/today_weather_page/data/network_today_weather_repository.dart';
import 'package:weather_app/features/today_weather_page/domain/state/today_weather_state.dart';

import '../entity/weather_entity.dart';

class TodayWeatherCubit extends Cubit<TodayWeatherState> {
  final String city;

  TodayWeatherCubit(this.city)
      : super(
          const TodayWeatherState(
            weatherEntity: WeatherEntity(),
          ),
        );

  final TodayWeatherNetworkRepository repository =
      TodayWeatherNetworkRepository();

  void init() async {
    await loadWeather();
  }

  Future<void> loadWeather() async {
    emit(state.copyWith(loading: true));

    try {
      var weather = await repository.getWeather(city: city);
      emit(state.copyWith(
        weatherEntity: weather,
      ));
      emit(state.copyWith(loading: false));
    } catch (e) {
      emit(state.copyWith(loading: false, error: true));
    }
  }
}
