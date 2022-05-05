import 'package:flutter/material.dart';
import 'package:weather_app/common_components/app_bars/default_app_bar.dart';

class ThreeDaysWeatherScreen extends StatelessWidget {
  const ThreeDaysWeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: const DefaultAppBar(
        titleText: 'Next three days',
      ),
    );
  }
}
