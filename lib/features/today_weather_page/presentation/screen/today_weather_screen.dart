import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/common_components/app_bars/default_app_bar.dart';
import 'package:weather_app/common_components/text_styles/app_text_styles.dart';
import 'package:weather_app/features/three_days_weather_page/presentation/screen/three_days_weather_screen.dart';

import '../../../../common_components/line.dart';
import '../../../../gen/assets.gen.dart';
import '../../domain/state/today_weather_cubit.dart';
import '../../domain/state/today_weather_state.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayWeatherScreen extends StatelessWidget {
  final String city;

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
            backgroundColor: Colors.blue.shade300,
            appBar: DefaultAppBar(
              titleText: DateFormat.yMMMd().format(DateTime.now()),
              action: [
                !state.error
                    ? IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return ThreeDaysWeatherScreen(
                                  lat: state.weatherEntity.lat,
                                  lon: state.weatherEntity.lon,
                                );
                              },
                            ),
                          );
                        },
                        icon: Assets.icons.iconTransition.svg(color: Colors.white))
                    : const SizedBox(),
              ],
            ),
            body: state.loading
                ? Center(
                    child: Text(
                      "Please waiting...",
                      style: AppTextStyle.normalW300S30,
                    ),
                  )
                : state.error
                    ? Center(
                        child: Text(
                          "Server error...",
                          style: AppTextStyle.normalW300S30,
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 10.h),
                          Text(
                            state.weatherEntity.name,
                            style: AppTextStyle.normalW300S40,
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            "${state.weatherEntity.temp}°C",
                            style: AppTextStyle.normalW300S40,
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Feel likes ${state.weatherEntity.feelsLike}°C",
                            style: AppTextStyle.normalW300S22,
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Assets.icons.iconUp.svg(
                                  width: 20.w,
                                  height: 20.h,
                                  color: Colors.white),
                              SizedBox(width: 4.w),
                              Text(
                                "${state.weatherEntity.tempMax}°C",
                                style: AppTextStyle.normalW300S22,
                              ),
                              SizedBox(width: 20.w),
                              Assets.icons.iconDown.svg(
                                  width: 22.w,
                                  height: 22.h,
                                  color: Colors.white),
                              SizedBox(width: 4.w),
                              Text(
                                "${state.weatherEntity.tempMin}°C",
                                style: AppTextStyle.normalW300S22,
                              ),
                            ],
                          ),
                          const Line(),
                          Padding(
                            padding: EdgeInsets.only(left: 50.w),
                            child: Row(
                              children: [
                                Assets.icons.iconCloud.svg(width: 50.w, height: 50.h),
                                SizedBox(width: 20.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.weatherEntity.weatherMain,
                                      style: AppTextStyle.normalW300S22,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.h),
                                      child: Text(
                                        state.weatherEntity.weatherDescription,
                                        style: AppTextStyle.normalW300S16,
                                      ),
                                    ),
                                    Text(
                                      "Cloudiness: ${state.weatherEntity.clouds}%",
                                      style: AppTextStyle.normalW300S16,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Line(),
                          Padding(
                            padding: EdgeInsets.only(left: 50.w),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Assets.icons.iconDrop.svg(
                                    width: 50.w,
                                    height: 50.h,
                                    color: Colors.white),
                                SizedBox(width: 20.w),
                                Text(
                                  "Humidity:\n${state.weatherEntity.humidity}%",
                                  style: AppTextStyle.normalW300S16,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Assets.icons.iconPreassure
                                    .svg(width: 50.w, height: 50.h),
                                SizedBox(width: 20.w),
                                Text(
                                  "Pressure:\n${state.weatherEntity.pressure} mBar",
                                  style: AppTextStyle.normalW300S16,
                                ),
                              ],
                            ),
                          ),
                          const Line(),
                          Padding(
                            padding: EdgeInsets.only(left: 50.w),
                            child: Row(
                              children: [
                                Assets.icons.iconWind
                                    .svg(width: 50.w, height: 50.h),
                                SizedBox(width: 20.w),
                                Text(
                                  "Wind speed:\n${state.weatherEntity.windSpeed} m/s\n"
                                  "Direction of the wind:\n${state.weatherEntity.windDeg}°\n"
                                  "Gust:\n${state.weatherEntity.windGust} m/s",
                                  style: AppTextStyle.normalW300S16,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
          );
        },
      ),
    );
  }
}
