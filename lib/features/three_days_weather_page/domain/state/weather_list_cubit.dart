import 'dart:developer';

import 'package:weather_app/features/three_days_weather_page/domain/state/weather_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../../entity/weathers_list.dart';

class WeatherListCubit extends Cubit<WeatherListState> {
  final double lat;
  final double lon;

  WeatherListCubit(this.lat, this.lon)
      : super(
          WeatherListState(
            weatherList: WeatherList(),
          ),
        );

  void init() async {
    await loadWeatherList();
  }

  Future<void> loadWeatherList() async {
    emit(state.copyWith(loading: true));

    try {
      var url = Uri.https('api.openweathermap.org', '/data/2.5/onecall', {
        'lat': '${lat}',
        'lon': '${lon}',
        'exclude': 'current,minutely,hourly,alerts',
        'units': 'metric',
        'appid': '1b44d0a180da7320f88afc5d0ca955b3',
      });

      var response = await http.get(url);

      log("${response.body}");
      if (response.statusCode == 200) {
        var jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;

        var aa= WeatherList.fromJson(jsonResponse);
        log("${aa}");

        emit(
          state.copyWith(
            loading: false,
            weatherList: WeatherList.fromJson(jsonResponse),
          ),
        );
      } else {
        emit(state.copyWith(error: true));
      }
    } catch (e) {
      emit(state.copyWith(error: true));
    }
  }
}
