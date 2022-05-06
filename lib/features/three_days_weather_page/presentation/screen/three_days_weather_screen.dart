import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/common_components/app_bars/default_app_bar.dart';

import '../../../../common_components/text_styles/app_text_styles.dart';
import '../../domain/state/weather_list_cubit.dart';
import '../../domain/state/weather_list_state.dart';
import '../components/weather_container.dart';

class ThreeDaysWeatherScreen extends StatelessWidget {
  final double lat;
  final double lon;

  const ThreeDaysWeatherScreen({
    Key? key,
    required this.lat,
    required this.lon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherListCubit>(
      create: (context) => WeatherListCubit(lat, lon)..init(),
      child: BlocBuilder<WeatherListCubit, WeatherListState>(
        builder: (context, state) {
          return Scaffold(
            appBar: const DefaultAppBar(
              titleText: 'Next three days',
            ),
            body: state.loading
                ? const Center(
                    child: Text(
                      "Please waiting...",
                      style: AppTextStyle.timesNewRomanW700S30,
                    ),
                  )
                : state.error
                    ? const Center(
                        child: Text(
                          "Server error...",
                          style: AppTextStyle.timesNewRomanW700S30,
                        ),
                      )
                    : Stack(
                        children: [
                          ListView(
                            children: [
                              const SizedBox(height: 8),
                              for (int i = 1; i < 4; i++)
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: WeatherContainer(
                                    daily: state.weatherList!.daily![i],
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
          );
        },
      ),
    );
  }
}
