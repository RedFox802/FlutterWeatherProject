import 'package:flutter/material.dart';
import 'package:weather_app/common_components/text_styles/app_text_styles.dart';

import '../../../../common_components/line.dart';
import '../../../../gen/assets.gen.dart';
import '../../entity/weathers_list.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeatherContainer extends StatelessWidget {
  final Daily daily;
  final int day;

  const WeatherContainer({
    Key? key,
    required this.daily,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime _date = DateTime.now().add(Duration(days: day));
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 290.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: Colors.blue,
        ),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Text(
              DateFormat.yMMMd().format(_date),
              style: AppTextStyle.normalW300S18,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: 6.h, left: 10.w, right: 20.h),
                    child: Text(
                      "${daily.temp?.day}°C",
                      style: AppTextStyle.normalW300S30,
                    ),
                  ),
                  Text(
                    "${daily.weather?.first.main}\n${daily.weather?.first.description}",
                    style: AppTextStyle.normalW300S14,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const Line(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Assets.icons.iconWind.svg(width: 40.w, height: 40.h),
                        SizedBox(width: 10.w),
                        Text(
                          "Wind\n${daily.windSpeed} m/c",
                          style: AppTextStyle.normalW300S14,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Assets.icons.iconPreassure
                            .svg(width: 40.w, height: 40.h),
                        SizedBox(width: 10.w),
                        Text(
                          "Preassure\n${daily.pressure} mBar",
                          style: AppTextStyle.normalW300S14,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 20.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Assets.icons.iconRain.svg(width: 40.w, height: 40.h),
                        SizedBox(width: 10.w),
                        Text(
                          "Rain\n${daily.pop}%",
                          style: AppTextStyle.normalW300S14,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Assets.icons.iconDrop.svg(
                            width: 40.w, height: 40.h, color: Colors.white),
                        SizedBox(width: 10.w),
                        Text(
                          "Humidity\n${daily.humidity}%",
                          style: AppTextStyle.normalW300S14,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Line(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Morn\n${daily.temp?.morn}\n${daily.feelsLike?.morn}',
                  style: AppTextStyle.normalW300S14,
                ),
                SizedBox(width: 30.w),
                Text(
                  'Day\n${daily.temp?.day}\n${daily.feelsLike?.day}',
                  style: AppTextStyle.normalW300S14,
                ),
                SizedBox(width: 30.w),
                Text(
                  'Eve\n${daily.temp?.eve}\n${daily.feelsLike?.eve}',
                  style: AppTextStyle.normalW300S14,
                ),
                SizedBox(width: 30.w),
                Text(
                  'Nigt\n${daily.temp?.night}\n${daily.feelsLike?.night}',
                  style: AppTextStyle.normalW300S14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
