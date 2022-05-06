import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/common_components/app_bars/default_app_bar.dart';

import '../../../../common_components/text_styles/app_text_styles.dart';
import '../../domain/state/weather_list_cubit.dart';
import '../../domain/state/weather_list_state.dart';
import '../components/weather_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThreeDaysWeatherScreen extends StatelessWidget {
  final double lat;
  final double lon;

  const ThreeDaysWeatherScreen({
    Key? key,
    required this.lat,
    required this.lon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherListCubit>(
      create: (context) => WeatherListCubit(lat, lon)..init(),
      child: BlocBuilder<WeatherListCubit, WeatherListState>(
        builder: (context, state) {
          return Scaffold(
            appBar: const DefaultAppBar(
              titleText: 'Next three days',
            ),
            body: state.loading
                ? Center(
                    child: Text(
                      "Please waiting...",
                      style: AppTextStyle.normalW300S30.copyWith(color:Colors.black),
                    ),
                  )
                : state.error
                    ? Center(
                        child: Text(
                          "Server error...",
                          style: AppTextStyle.normalW300S30.copyWith(color:Colors.black),
                        ),
                      )
                    : Builder(
                      builder: (context) {
                        int _index = 1;
                        double? _first = state.weatherList.daily?[1].temp?.day;
                        double? _current;
                        for (int i = 2; i < 4; i++) {
                          _current =
                              state.weatherList.daily?[i].temp?.day;
                          if (_current! < _first!) {
                            _first = _current;
                            _index = i;
                          }
                        }
                        return Stack(
                            children: [
                              ListView(
                                children: [
                                  SizedBox(height: 8.h),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 6.h),
                                    child: WeatherContainer(
                                      daily:
                                          state.weatherList.daily![_index],
                                      day: _index,
                                    ),
                                  ),
                                  for (int i = 1; i < 4; i++)
                                    if (i != _index)
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 6.h),
                                        child: WeatherContainer(
                                          daily: state.weatherList.daily![i],
                                          day: i,
                                        ),
                                      ),
                                ],
                              ),
                            ],
                          );
                      }
                    ),
          );
        },
      ),
    );
  }
}
