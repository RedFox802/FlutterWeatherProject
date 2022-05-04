import 'package:flutter/material.dart';
import 'package:weather_app/common_components/app_bars/default_app_bar.dart';

class ThreeDaysWeatherScreen extends StatelessWidget {
  const ThreeDaysWeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DefaultAppBar(
        titleText: 'Next three days',
      ),
    );
  }
}
