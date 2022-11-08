import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixabay_search_sample/controller/home_screen_controller.dart';
import 'package:pixabay_search_sample/view/common/common.dart';
import 'package:pixabay_search_sample/view/common/constans.dart';

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
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? height / 2
          : height / 2,
      width: MediaQuery.of(context).orientation == Orientation.portrait
          ? width / 1.2
          : width / 2,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(homeCtrl.pixabayImages[index].webformatURL))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Container(
            height: 70,
            width: width / 1.2,
            decoration: glassDecoration(
                Colors.white.withOpacity(.5), Colors.white.withOpacity(.7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.thumb_up,
                  color: Colors.black,
                  size: 30,
                ),
                kWidth5,
                Text(
                  homeCtrl.pixabayImages[index].likes.toString(),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
