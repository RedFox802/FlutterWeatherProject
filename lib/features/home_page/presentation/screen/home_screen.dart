import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:weather_app/common_components/text_styles/app_text_styles.dart';
import 'package:weather_app/features/home_page/domain/state/choose_city_cubit.dart';
import 'package:weather_app/features/home_page/domain/state/choose_city_state.dart';
import 'package:weather_app/features/today_weather_page/presentation/screen/today_weather_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();
    String _city;

    return BlocConsumer<ChooseCityCubit, ChooseCityState>(
      listener: (context, state) {
        if (state.city != '') {
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
          backgroundColor: Colors.blue.shade200,
          body: FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 120.h, bottom: 50.h),
                  child: Text(
                    'Choose your city',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.normalW400S22,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: FormBuilderTextField(
                    name: 'city',
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    validator: MinLengthValidator(
                      1,
                      errorText: 'This is a required field',
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  height: 60.h,
                  width: 300.w,
                  child: ElevatedButton(
                    onPressed: () {
                      _formKey.currentState?.validate();
                      if (_formKey.currentState?.validate() ?? false) {
                        _formKey.currentState!.save();
                        _city = _formKey.currentState!.value['city']
                            .toString()
                            .trim();
                        if (state.city == '') {
                          context.read<ChooseCityCubit>().saveCity(city: _city);
                        } else if (state.city != _city) {
                          context
                              .read<ChooseCityCubit>()
                              .updateCity(city: _city);
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return TodayWeatherScreen(
                                city: _city,
                              );
                            },
                          ),
                        );
                      }
                    },
                    child: Text(
                      "Confirm",
                      style: AppTextStyle.normalW400S18,
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
