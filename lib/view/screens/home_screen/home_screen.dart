import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:pixabay_search_sample/view/common/common.dart';
import 'package:pixabay_search_sample/view/common/constans.dart';

import 'package:pixabay_search_sample/view/screens/home_screen/widgets/background_decoration.dart';
import 'package:pixabay_search_sample/view/screens/home_screen/widgets/image_gridview_widget.dart';
import 'package:pixabay_search_sample/view/screens/home_screen/widgets/search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kAppBarColor,
        elevation: 0,
        title: const SearchFieldWidget(),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          const BackgroundDecorationWidget(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ImageGridviewWidget(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
