import 'package:flutter/material.dart';

import 'package:pixabay_search_sample/view/common/constans.dart';

import 'package:pixabay_search_sample/view/screens/home_screen/widgets/background_decoration.dart';
import 'package:pixabay_search_sample/view/screens/home_screen/widgets/image_gridview_widget.dart';

import 'package:pixabay_search_sample/view/screens/home_screen/widgets/search_field.dart';

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
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          MediaQuery.of(context).orientation == Orientation.portrait
              ? const BackgroundDecorationWidget()
              : const SizedBox(),
          SafeArea(
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: const ImageGridviewWidget()),
          ),
        ],
      ),
    );
  }
}
