import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/three_days_weather_page/domain/state/weather_list_state.dart';

import '../../data/three_days_weather_network_repository.dart';

class WeatherListCubit extends Cubit<WeatherListState> {
  final double lat;
  final double lon;

  WeatherListCubit(this.lat, this.lon)
      : super(
          WeatherListState(
            weatherList: [],
          ),
        );

  void init() async {
    await loadWeatherList();
  }

  ThreeDaysWeatherNetworkRepository repository =
      ThreeDaysWeatherNetworkRepository();

  Future<void> loadWeatherList() async {
    emit(state.copyWith(loading: true));

    try {
      var weatherList = await repository.getWeatherList(lon: lon, lat: lat);

      emit(state.copyWith(weatherList: weatherList));
      emit(state.copyWith(loading: false));
    } catch (e) {
      emit(state.copyWith(error: true));
    }
  }
}
