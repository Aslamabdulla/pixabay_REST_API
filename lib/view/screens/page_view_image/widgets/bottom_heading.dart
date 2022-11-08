import 'package:flutter/material.dart';
import 'package:pixabay_search_sample/controller/home_screen_controller.dart';
import 'package:pixabay_search_sample/view/common/constans.dart';
import 'package:pixabay_search_sample/view/screens/page_view_image/widgets/text_widget.dart';

class BottomHeadingWidget extends StatelessWidget {
  final HomeController controller;
  final int index;
  const BottomHeadingWidget({
    Key? key,
    required this.controller,
    required this.index,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidgetWithSize(
            text: "PIXABAY IMAGES",
            size: width * .06,
            family: 'POPPINS',
            weight: FontWeight.bold),
        Row(
          children: [
            Icon(
              Icons.thumb_up_alt_rounded,
              size: width * .10,
            ),
            kWidth5,
            TextWidgetWithSize(
              text: controller.pixabayImages[index].likes.toString(),
              size: width * .10,
              family: 'Poppins',
              weight: FontWeight.bold,
            ),
          ],
        ),
      ],
    );
  }
}
