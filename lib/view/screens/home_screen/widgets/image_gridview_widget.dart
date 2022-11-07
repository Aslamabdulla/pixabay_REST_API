import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:pixabay_search_sample/view/common/common.dart';

class ImageGridviewWidget extends StatelessWidget {
  const ImageGridviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: height * .87,
      width: width,
      child: GridView.custom(
        physics: const BouncingScrollPhysics(),
        primary: false,
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          crossAxisSpacing: 10,
          pattern: [
            const WovenGridTile(1),
            const WovenGridTile(
              5 / 7,
              crossAxisRatio: 1,
              alignment: AlignmentDirectional.centerEnd,
            ),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          addSemanticIndexes: false,
          childCount: 10,
          (context, index) {
            return Container(
              height: 100,
              width: 100,
              decoration: gridTileDecoration,
            );
          },
        ),
      ),
    );
  }
}
