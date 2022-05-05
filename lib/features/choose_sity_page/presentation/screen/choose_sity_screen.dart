import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:weather_app/common_components/text_styles/app_text_styles.dart';
import 'package:weather_app/features/today_weather_page/presentation/screen/today_weather_screen.dart';

class ChooseCityScreen extends StatelessWidget {
  const ChooseCityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();
    String _city;
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      body: FormBuilder(
        key: _formKey,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 120, bottom: 50),
              child: Text(
                'Choose your city',
                textAlign: TextAlign.center,
                style: AppTextStyle.timesNewRomanW700S22,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FormBuilderTextField(
                name: 'city',
                decoration: const InputDecoration(border: OutlineInputBorder()),
                validator: MinLengthValidator(
                  1,
                  errorText: 'This is a required field',
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  _formKey.currentState?.validate();
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState!.save();
                    _city = _formKey.currentState!.value['city'];
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
                  style: AppTextStyle.timesNewRomanW700S18.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
