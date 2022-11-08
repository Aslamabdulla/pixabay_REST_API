import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixabay_search_sample/controller/home_screen_controller.dart';

import 'package:pixabay_search_sample/view/common/constans.dart';

import 'package:pixabay_search_sample/view/screens/home_screen/widgets/background_decoration.dart';
import 'package:pixabay_search_sample/view/screens/home_screen/widgets/image_gridview_widget.dart';

import 'package:pixabay_search_sample/view/screens/home_screen/widgets/search_field.dart';
import 'package:pixabay_search_sample/view/screens/page_view_image/page_view_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: kAppBarColor,
        elevation: 0,
        title: const SearchFieldWidget(),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => const PageViewImageScreen());
              },
              icon: const Icon(
                Icons.perm_media_outlined,
                color: kRedAccent,
                size: 30,
              ))
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          MediaQuery.of(context).orientation == Orientation.portrait
              ? const BackgroundDecorationWidget()
              : const SizedBox(),
          SafeArea(
            child: GetBuilder<HomeController>(
                init: HomeController(),
                builder: (controller) {
                  return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      child: controller.pixabayImages.isEmpty
                          ? const Center(
                              child: Text("No Item Found"),
                            )
                          : ImageGridviewWidget(
                              homeController: controller,
                            ));
                }),
          ),
        ],
      ),
    );
  }
}
