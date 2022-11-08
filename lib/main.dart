import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixabay_search_sample/controller/home_screen_controller.dart';

import 'package:pixabay_search_sample/view/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding:
          BindingsBuilder(() => {Get.put(HomeController(), permanent: true)}),
      debugShowCheckedModeBanner: false,
      title: 'Pixabay',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
