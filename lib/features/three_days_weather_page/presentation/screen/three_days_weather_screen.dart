import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../text_styles/app_text_styles.dart';
import '../../domain/state/weather_list_cubit.dart';
import '../../domain/state/weather_list_state.dart';
import '../components/weather_container.dart';

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
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
    final bool canPop = parentRoute?.canPop ?? false;
    return BlocProvider<WeatherListCubit>(
      create: (context) => WeatherListCubit(lat, lon)..init(),
      child: BlocBuilder<WeatherListCubit, WeatherListState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Next three days',
                style: AppTextStyle.normalW400S18,
              ),
              centerTitle: true,
              leading: canPop
                  ? IconButton(
                      onPressed: () {
                        Navigator.maybePop(context);
                      },
                      icon: Assets.icons.iconBack
                          .svg(width: 26.w, height: 26.h, color: Colors.white),
                    )
                  : null,
            ),
            body: state.loading || state.error
                ? Center(
                    child: Text(
                      state.error ? "Server error..." : "Please waiting...",
                      style: AppTextStyle.normalW300S30
                          .copyWith(color: Colors.black),
                    ),
                  )
                : Builder(
                    builder: (context) {
                      //вычисляем самый холодный день
                      int _index = 1;
                      int _first = state.weatherList[1].tempDay;
                      int _current;
                      for (int i = 2; i < 4; i++) {
                        _current = state.weatherList[i].tempDay;
                        if (_current < _first) {
                          _first = _current;
                          _index = i;
                        }
                      }
                      return Stack(
                        children: [
                          ListView(
                            children: [
                              SizedBox(height: 8.h),
                              //выводится сначала самый холодный день
                              WeatherContainer(
                                day: _index,
                                entity: state.weatherList[_index],
                              ),
                              for (int i = 1; i < 4; i++)
                                if (i != _index)
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 6.h),
                                    child: WeatherContainer(
                                      day: i,
                                      entity: state.weatherList[i],
                                    ),
                                  ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
          );
        },
      ),
    );
  }
}
