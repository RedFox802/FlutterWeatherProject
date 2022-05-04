import 'package:flutter/material.dart';

import 'features/choose_sity_page/presentation/screen/choose_sity_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChooseCityScreen(),
    );
  }
}
