import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/common_components/app_bars/default_app_bar.dart';
import 'package:weather_app/features/three_days_weather_page/presentation/screen/three_days_weather_screen.dart';

import '../../domain/today_weather_cubit.dart';
import '../../domain/today_weather_state.dart';

class TodayWeatherScreen extends StatelessWidget {
  const TodayWeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodayWeatherCubit()..init(),
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
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Text(
                    "Москва",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "15'",
                    style: TextStyle(fontSize: 70),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "feel like 7'",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 128),
                  child: Row(
                    children: const [
                      Icon(Icons.accessibility_rounded),
                      SizedBox(width: 4),
                      Text(
                        "22'",
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.ac_unit_outlined),
                      SizedBox(width: 4),
                      Text(
                        "5'",
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Облачно",
                  style: TextStyle(fontSize: 22),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    "Слегка обласно, с небольшим дождем",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    "Влажность: 20%",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const Text(
                  "Давление: 624",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Скорость ветра: 12",
                  style: TextStyle(fontSize: 16),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    "Степень ветра: 25",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const Text(
                  "Порывы ветра: 12",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
