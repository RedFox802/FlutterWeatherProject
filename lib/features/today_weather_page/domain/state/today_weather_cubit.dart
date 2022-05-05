import 'package:weather_app/features/today_weather_page/domain/state/today_weather_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../../entity/my_weather_entity.dart';

class TodayWeatherCubit extends Cubit<TodayWeatherState> {
  final String city;

  TodayWeatherCubit(this.city)
      : super(
          TodayWeatherState(
            myWeatherEntity: MyWeatherEntity(),
          ),
        );

  void init() async {
    await loadWeather();
  }

  Future<void> loadWeather() async {
    emit(state.copyWith(loading: true));

    try {
      var url = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
        'q': '${city},ru',
        'units': 'metric',
        'appid': '1b44d0a180da7320f88afc5d0ca955b3',
      });

      var response = await http.get(url);

      if (response.statusCode == 200) {
        var jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;
        emit(
          state.copyWith(
            loading: false,
            myWeatherEntity: MyWeatherEntity.fromJson(jsonResponse),
          ),
        );
      } else {
        emit(state.copyWith(error: true,loading: false));
      }
    } catch (e) {
      emit(state.copyWith(error: true,loading: false));
    }
  }
}
