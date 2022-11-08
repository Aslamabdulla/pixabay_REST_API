import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixabay_search_sample/controller/home_screen_controller.dart';

class ShowImageWidget extends StatelessWidget {
  final int index;
  final HomeController homeCtrl;
  const ShowImageWidget({
    Key? key,
    required this.index,
    required this.homeCtrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        child: Image.network(homeCtrl.pixabayImages[index].webformatURL,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? height / 2
                : height / 2),
      ),
    );
  }
}
