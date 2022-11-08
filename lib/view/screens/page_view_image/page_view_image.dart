// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixabay_search_sample/controller/home_screen_controller.dart';
import 'package:pixabay_search_sample/view/common/common.dart';
import 'package:pixabay_search_sample/view/common/constans.dart';
import 'package:pixabay_search_sample/view/screens/page_view_image/widgets/bottom_heading.dart';
import 'package:pixabay_search_sample/view/screens/page_view_image/widgets/side_buttons_widget.dart';

class PageViewImageScreen extends StatelessWidget {
  const PageViewImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Scaffold(
      body: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return controller.pixabayImages.isEmpty
                ? const Center(
                    child: Text(
                      "NO ITEM THERE",
                      style: TextStyle(color: kBlack),
                    ),
                  )
                : PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: controller.pixabayImages.length,
                    controller: controller.pageviewController,
                    itemBuilder: (context, index) => Container(
                          height: height,
                          width: width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  filterQuality: FilterQuality.high,
                                  image: NetworkImage(
                                    controller
                                        .pixabayImages[index].webformatURL,
                                  ),
                                  fit: BoxFit.cover)),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  decoration: glassDecorationPageView,
                                  margin: const EdgeInsets.only(
                                      bottom: 40, left: 10),
                                  padding: const EdgeInsets.only(left: 12),
                                  height: height * .20,
                                  width: width / 1.3,
                                  child: BottomHeadingWidget(
                                    width: width,
                                    controller: controller,
                                    index: index,
                                  ),
                                ),
                              ),
                              SideButtonsWidget(height: height, width: width)
                            ],
                          ),
                        ));
          }),
    );
  }
}
