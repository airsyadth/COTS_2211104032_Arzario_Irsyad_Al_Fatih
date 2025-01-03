import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/board_page/view/onboard_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gojek',
      home: OnboardView(), // Halaman pertama yang dimuat
    );
  }
}
