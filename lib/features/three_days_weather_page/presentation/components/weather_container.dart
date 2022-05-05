import 'package:flutter/material.dart';
import 'package:weather_app/common_components/text_styles/app_text_styles.dart';

import '../../../../gen/assets.gen.dart';
import '../../entity/weathers_list.dart';

class WeatherContainer extends StatelessWidget {
  final Daily daily;

  const WeatherContainer({
    Key? key,
    required this.daily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.blue,
      ),
      child: Column(
        children: [
          Text(
            "${daily.temp?.day}",
            style: AppTextStyle.timesNewRomanW700S16,
          ),
          Row(
            children: [
              Assets.icons.iconUp.svg(width: 20, height: 20),
              const SizedBox(width: 4),
              Text(
                "${daily.temp?.max}",
                style: AppTextStyle.timesNewRomanW700S16,
              ),
              Assets.icons.iconDown
                  .svg(width: 22, height: 22),
              const SizedBox(width: 4),
              Text(
                "${daily.temp?.min}",
                style: AppTextStyle.timesNewRomanW700S16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
