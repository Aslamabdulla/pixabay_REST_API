import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:pixabay_search_sample/controller/home_screen_controller.dart';
import 'package:pixabay_search_sample/services/services.dart';
import 'package:pixabay_search_sample/view/common/common.dart';

// class ImageGridviewWidget extends StatelessWidget {
//   const ImageGridviewWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double height = Get.height;
//     double width = Get.width;
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       height: height * .87,
//       width: width,
//       child: GridView.custom(
//         physics: const BouncingScrollPhysics(),
//         primary: false,
//         gridDelegate: SliverWovenGridDelegate.count(
//           crossAxisCount: 2,
//           mainAxisSpacing: 0,
//           crossAxisSpacing: 10,
//           pattern: [
//             const WovenGridTile(1),
//             const WovenGridTile(
//               5 / 7,
//               crossAxisRatio: 1,
//               alignment: AlignmentDirectional.centerEnd,
//             ),
//           ],
//         ),
//         childrenDelegate: SliverChildBuilderDelegate(
//           addSemanticIndexes: false,
//           childCount: 10,
//           (context, index) {
//             return Container(
//               height: 100,
//               width: 100,
//               decoration: gridTileDecoration,
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

class ImageGridviewWidget extends StatelessWidget {
  const ImageGridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ImageDatabase database = ImageDatabase();
    return GetBuilder<HomeController>(builder: (homeCtrl) {
      return homeCtrl.isLoading.value == false
          ? MasonryGridView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              itemCount: homeCtrl.pixabayImages.length + 1,
              itemBuilder: (context, index) {
                if (index < homeCtrl.pixabayImages.length) {
                  final imagesNetwork =
                      homeCtrl.pixabayImages[index].previewURL;

                  return ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      imagesNetwork,
                      filterQuality: FilterQuality.low,
                      fit: BoxFit.cover,
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
