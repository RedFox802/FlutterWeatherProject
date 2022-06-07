import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/features/three_days_weather_page/entity/three_days_weather_entity.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../text_styles/app_text_styles.dart';

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
        //вычитаем для отступов
        height: MediaQuery.of(context).size.height / 2 - 48.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: Colors.blue,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                DateFormat.yMMMd().format(_date),
                style: AppTextStyle.normalW400S18,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 36.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${entity.tempDay}°C",
                    style: AppTextStyle.normalW300S30,
                  ),
                  Text(
                    "${entity.weatherMain}\n${entity.weatherDescription}",
                    maxLines: 4,
                    style: AppTextStyle.normalW400S16,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2.h,
              color: Colors.white,
              endIndent: 20.w,
              indent: 20.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 28.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Assets.icons.iconRain.svg(width: 40.w, height: 40.h),
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
                          Assets.icons.iconDrop.svg(
                            width: 40.w,
                            height: 40.h,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Rain\n${entity.pop}%",
                            style: AppTextStyle.normalW300S14,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Assets.icons.iconWind.svg(width: 40.w, height: 40.h),
                          SizedBox(width: 10.w),
                          Text(
                            "Pressure\n${entity.pressure} mB",
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
                            "Humidity\n${entity.humidity}%",
                            style: AppTextStyle.normalW300S14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2.h,
              color: Colors.white,
              endIndent: 20.w,
              indent: 20.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 34.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Morn\n${entity.tempMorn}°C\n${entity.feelsMorn}°C',
                    style: AppTextStyle.normalW300S14,
                  ),
                  Text(
                    'Day\n${entity.tempDay}°C\n${entity.feelsDay}°C',
                    style: AppTextStyle.normalW300S14,
                  ),
                  Text(
                    'Eve\n${entity.tempEve}°C\n${entity.feelsEve}°C',
                    style: AppTextStyle.normalW300S14,
                  ),
                  Text(
                    'Night\n${entity.tempNight}°C\n${entity.feelsNight}°C',
                    style: AppTextStyle.normalW300S14,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
