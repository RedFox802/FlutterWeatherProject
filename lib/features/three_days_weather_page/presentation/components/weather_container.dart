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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.blue,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6,left: 30,right: 20),
                    child: Text(
                      "${daily.temp?.day}°C",
                      style: AppTextStyle.timesNewRomanW700S30
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  Text(
                    "${daily.weather?.first.main}\n${daily.weather?.first.description}",
                    style: AppTextStyle.timesNewRomanW700S16
                        .copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 300,
                decoration: const BoxDecoration(
                  border: BorderDirectional(bottom: BorderSide(width: 2,color: Colors.white)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Assets.icons.iconWind.svg(width: 40, height: 40),
                        const SizedBox(width: 10),
                        Text(
                          "Wind\n${daily.windSpeed} m/c",
                          style: AppTextStyle.timesNewRomanW700S14
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Assets.icons.iconPreassure.svg(width: 40, height: 40),
                        const SizedBox(width: 10),
                        Text(
                          "Preassure\n${daily.pressure} mBar",
                          style: AppTextStyle.timesNewRomanW700S14
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Assets.icons.iconRain.svg(width: 40, height: 40),
                        const SizedBox(width: 10),
                        Text(
                          "Rain\n${daily.pop}%",
                          style: AppTextStyle.timesNewRomanW700S14
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Assets.icons.iconDrop
                            .svg(width: 40, height: 40, color: Colors.white),
                        const SizedBox(width: 10),
                        Text(
                          "Humidity\n${daily.humidity}%",
                          style: AppTextStyle.timesNewRomanW700S14
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                width: 300,
                decoration: const BoxDecoration(
                  border: BorderDirectional(bottom: BorderSide(width: 2,color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Morn\n${daily.temp?.morn}\n${daily.feelsLike?.morn}',
                        style: AppTextStyle.timesNewRomanW700S14
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Column(
                    children: [
                      Text(
                        'Day\n${daily.temp?.day}\n${daily.feelsLike?.day}',
                        style: AppTextStyle.timesNewRomanW700S14
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Column(
                    children: [
                      Text(
                        'Eve\n${daily.temp?.eve}\n${daily.feelsLike?.eve}',
                        style: AppTextStyle.timesNewRomanW700S14
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Column(
                    children: [
                      Text(
                        'Nigt\n${daily.temp?.night}\n${daily.feelsLike?.night}',
                        style: AppTextStyle.timesNewRomanW700S14
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
