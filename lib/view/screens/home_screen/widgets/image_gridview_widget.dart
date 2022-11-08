// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import 'package:pixabay_search_sample/controller/home_screen_controller.dart';
import 'package:pixabay_search_sample/services/services.dart';

import 'package:pixabay_search_sample/view/screens/home_screen/widgets/image_preview_widget.dart';

class ImageGridviewWidget extends StatelessWidget {
  const ImageGridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeCtrl) {
      return homeCtrl.isLoading == false
          ? MasonryGridView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              itemCount: homeCtrl.pixabayImages.length,
              itemBuilder: (context, index) {
                if (index < homeCtrl.pixabayImages.length) {
                  final imagesNetwork =
                      homeCtrl.pixabayImages[index].previewURL;

                  return GestureDetector(
                    onTap: () {
                      Get.defaultDialog(
                        textCancel: "OK",
                        title: "PIXABAY IMAGE",
                        content:
                            ShowImageWidget(homeCtrl: homeCtrl, index: index),
                        onCancel: () {},
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        imagesNetwork,
                        filterQuality: FilterQuality.medium,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              },
            )
          : const Center(
              child: CupertinoActivityIndicator(
                radius: 30,
              ),
            );
    });
  }
}
