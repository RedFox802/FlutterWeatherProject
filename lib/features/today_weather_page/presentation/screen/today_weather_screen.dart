import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/common_components/app_bars/default_app_bar.dart';
import 'package:weather_app/features/three_days_weather_page/presentation/screen/three_days_weather_screen.dart';

import '../../../../common_components/loading_page/loading_screen.dart';
import '../../domain/state/today_weather_cubit.dart';
import '../../domain/state/today_weather_state.dart';

class TodayWeatherScreen extends StatelessWidget {
  final city;

  const TodayWeatherScreen({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodayWeatherCubit(city)..init(),
      child: BlocBuilder<TodayWeatherCubit, TodayWeatherState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.indigo.shade300,
            appBar: DefaultAppBar(
              titleText: 'Weather',
              action: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const ThreeDaysWeatherScreen();
                        },
                      ),
                    );
                  },
                  icon: const Icon(Icons.add_chart),
                )
              ],
            ),
            body: state.error
                ? SnackBar(
                    content: const Text('Server error!'),
                    action: SnackBarAction(
                      label: 'OK',
                      onPressed: () {
                        Navigator.canPop(context);
                      },
                    ),
                  )
                : state.loading
                    ? const LoadingScreen()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 30),
                            child: Text(
                              "${state.myWeatherEntity?.name}",
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "${state.myWeatherEntity?.main?.temp}",
                              style: const TextStyle(fontSize: 60),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Feel like: ${state.myWeatherEntity?.main?.feelsLike}",
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 70),
                            child: Row(
                              children: [
                                const Icon(Icons.accessibility_rounded),
                                const SizedBox(width: 4),
                                Text(
                                  "${state.myWeatherEntity?.main?.tempMax}",
                                  style: const TextStyle(fontSize: 22),
                                ),
                                const SizedBox(width: 8),
                                const Icon(Icons.ac_unit_outlined),
                                const SizedBox(width: 4),
                                Text(
                                  "${state.myWeatherEntity?.main?.tempMin}",
                                  style: const TextStyle(fontSize: 22),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "${state.myWeatherEntity?.weather?.first.main}",
                            style: const TextStyle(fontSize: 22),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "${state.myWeatherEntity?.weather?.first.description}",
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "Pressure: ${state.myWeatherEntity?.main?.pressure}",
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          Text(
                            "Humidity: ${state.myWeatherEntity?.main?.humidity}",
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "Wind speed: ${state.myWeatherEntity?.wind?.speed}",
                            style: const TextStyle(fontSize: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "Wind deg: ${state.myWeatherEntity?.wind?.deg}",
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          Text(
                            "Gust: ${state.myWeatherEntity?.wind?.gust}",
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
          );
        },
      ),
    );
  }
}
