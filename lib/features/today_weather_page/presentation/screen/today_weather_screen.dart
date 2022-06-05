import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/common_components/app_bars/default_app_bar.dart';
import 'package:weather_app/common_components/text_styles/app_text_styles.dart';
import 'package:weather_app/features/three_days_weather_page/presentation/screen/three_days_weather_screen.dart';

import 'package:intl/intl.dart';
import '../../../../gen/assets.gen.dart';
import '../../domain/state/today_weather_cubit.dart';
import '../../domain/state/today_weather_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayWeatherScreen extends StatelessWidget {
  final String city;

  const TodayWeatherScreen({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double indent = MediaQuery.of(context).size.width / 9;
    return BlocProvider(
      create: (context) => TodayWeatherCubit(city)..init(),
      child: BlocBuilder<TodayWeatherCubit, TodayWeatherState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.blue.shade300,
            appBar: DefaultAppBar(
              titleText: 'Weather today',
              action: [
                !state.error && !state.loading
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
            body: state.loading || state.error
                ? Center(
                    child: Text(
                      state.error ? "Server error..." : "Please waiting...",
                      style: AppTextStyle.normalW300S30,
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                    child: Column(
                      children: [
                        Text(
                          state.weatherEntity.name,
                          style: AppTextStyle.normalW300S30,
                        ),
                        Text(
                          DateFormat.yMMMd().format(DateTime.now()),
                          style: AppTextStyle.normalW400S18,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "${state.weatherEntity.temp} °C",
                          style: AppTextStyle.normalW300S60,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 20.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Highest',
                                    style: AppTextStyle.normalW500S18,
                                  ),
                                  Text(
                                    "${state.weatherEntity.tempMax}°C",
                                    style: AppTextStyle.normalW500S18,
                                  ),
                                ],
                              ),
                              SizedBox(width: 20.w),
                              Column(
                                children: [
                                  Text(
                                    'Lowest',
                                    style: AppTextStyle.normalW500S18,
                                  ),
                                  Text(
                                    "${state.weatherEntity.tempMin}°C",
                                    style: AppTextStyle.normalW500S18,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 2.h,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: indent),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Assets.icons.iconCloud
                                  .svg(width: 50.w, height: 50.h),
                              SizedBox(width: 20.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    state.weatherEntity.weatherMain,
                                    style: AppTextStyle.normalW400S22,
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
                        //const Line(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: indent),
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
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: indent),
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
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: indent),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Assets.icons.iconWind
                                  .svg(width: 50.w, height: 50.h),
                              SizedBox(width: 20.w),
                              Text(
                                "Wind speed:\n${state.weatherEntity.windSpeed} m/s\n",
                                style: AppTextStyle.normalW300S16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
