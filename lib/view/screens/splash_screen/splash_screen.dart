import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pixabay_search_sample/view/screens/home_screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      splashTimer();
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Image.asset("assets/images/splash.gif"),
        ),
      ),
    );
  }

  splashTimer() async {
    await Future.delayed(
      const Duration(seconds: 4),
    ).then((value) => Get.offAll(() => const HomeScreen(),
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 400)));
  }
}
