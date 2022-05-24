import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/common_components/text_styles/app_text_styles.dart';
import 'package:weather_app/features/three_days_weather_page/entity/three_days_weather_entity.dart';

import '../../../../common_components/line.dart';
import '../../../../gen/assets.gen.dart';

class WeatherContainer extends StatelessWidget {
  final ThreeDaysWeatherEntity entity;
  final int day;

  const WeatherContainer({
    Key? key,
    required this.day,
    required this.entity,
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
                    padding: EdgeInsets.only(bottom: 6.h, left: 10.w, right: 20.h),
                    child: Text(
                      "${entity.tempDay}°C",
                      style: AppTextStyle.normalW300S30,
                    ),
                  ),
                  Text(
                    "${entity.weatherMain}\n${entity.weatherDescription}",
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
                          "Wind\n${entity.windSpeed} m/c",
                          style: AppTextStyle.normalW300S14,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Assets.icons.iconPreassure.svg(width: 40.w, height: 40.h),
                        SizedBox(width: 10.w),
                        Text(
                          "Pressure\n${entity.pressure} mBar",
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
                          "Rain\n${entity.pop}%",
                          style: AppTextStyle.normalW300S14,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Assets.icons.iconDrop.svg(
                          width: 40.w,
                          height: 40.h,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "Humidity\n${entity.humidity}%",
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
                  'Morn\n${entity.tempMorn}\n${entity.feelsMorn}',
                  style: AppTextStyle.normalW300S14,
                ),
                SizedBox(width: 30.w),
                Text(
                  'Day\n${entity.tempDay}\n${entity.feelsDay}',
                  style: AppTextStyle.normalW300S14,
                ),
                SizedBox(width: 30.w),
                Text(
                  'Eve\n${entity.tempEve}\n${entity.feelsEve}',
                  style: AppTextStyle.normalW300S14,
                ),
                SizedBox(width: 30.w),
                Text(
                  'Nigt\n${entity.tempNight}\n${entity.feelsNight}',
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
