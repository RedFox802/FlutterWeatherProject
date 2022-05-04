import 'package:weather_app/features/today_weather_page/domain/today_weather_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/today_weather_page/entity/weather_entity.dart';

class TodayWeatherCubit extends Cubit<TodayWeatherState> {
  TodayWeatherCubit()
      : super(
          const TodayWeatherState(
            weatherEntity: WeatherEntity(),
          ),
        );

  void init() async {
    // await loadWeather();
  }

  Future<void> loadWeather() async {}
}
