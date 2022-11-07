import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixabay_search_sample/view/common/background_clipper.dart';

import 'package:pixabay_search_sample/view/common/constans.dart';

class BackgroundDecorationWidget extends StatelessWidget {
  const BackgroundDecorationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return ClipPath(
      clipper: BackgroundClipper(),
      child: Container(
        height: height,
        width: width,
        decoration: backgroundGradient,
      ),
    );
  }
}
