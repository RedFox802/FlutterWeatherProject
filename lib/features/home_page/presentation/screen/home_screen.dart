import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../text_styles/app_text_styles.dart';
import '../../../today_weather_page/presentation/screen/today_weather_screen.dart';
import '../../domain/state/choose_city_cubit.dart';
import '../../domain/state/choose_city_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FocusNode _focusNode = FocusNode();
    String city = '';
    double availableHeight = MediaQuery.of(context).size.height / 4;
    bool isFirst = true;

    return BlocConsumer<ChooseCityCubit, ChooseCityState>(
      listener: (context, state) {
        if (state.city != '' && isFirst) {
          isFirst = false;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return TodayWeatherScreen(
                  city: state.city,
                );
              },
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.blue.shade100,
          body: Padding(
            padding: EdgeInsets.only(top: 50.h),
            child: Column(
              children: [
                Assets.icons.icLogoSvg
                    .svg(height: availableHeight, width: availableHeight),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: availableHeight / 12, top: availableHeight / 12),
                  child: Text(
                    'Choose your city',
                    style: AppTextStyle.normalW300S18
                        .copyWith(color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Autocomplete<String>(
                    optionsBuilder: (TextEditingValue textEditingValue) {
                      city = textEditingValue.text;
                      if (textEditingValue.text == '') {
                        return state.cityList;
                      }
                      return state.cityList.where((String option) {
                        return option.startsWith(textEditingValue.text);
                      });
                    },
                    optionsViewBuilder: (context, onSelected, cityList) {
                      return Material(
                        child: Container(
                          height: 130.h,
                          color: Colors.blue.shade100,
                          child: ListView.builder(
                            itemCount: cityList.length,
                            itemBuilder: (BuildContext context, int index) {
                              final String option = cityList.elementAt(index);
                              return GestureDetector(
                                onTap: () {
                                  onSelected(option);
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(option,
                                          style: AppTextStyle.normalW300S16
                                              .copyWith(color: Colors.black)),
                                      Divider(
                                        color: Colors.blue,
                                        endIndent: 60.w,
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30.h),
                  height: 50.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.lightBlueAccent.shade100,
                  ),
                  child: TextButton(
                    onPressed: () async {
                      if (city.isNotEmpty) {
                        if (_focusNode.hasFocus) {
                          FocusScope.of(context).unfocus();
                        }

                        await context
                            .read<ChooseCityCubit>()
                            .saveCity(city: city);

                        if (!state.cityList.contains(city)) {
                          await context
                              .read<ChooseCityCubit>()
                              .saveCityList(city: city);
                        }

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return TodayWeatherScreen(
                                city: city,
                              );
                            },
                          ),
                        );
                      }
                    },
                    child: Text(
                      "Go to weather",
                      style: AppTextStyle.normalW300S18
                          .copyWith(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
