import 'package:flutter/material.dart';
import 'package:pixabay_search_sample/view/common/common.dart';

class SideButtonsWidget extends StatelessWidget {
  const SideButtonsWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        decoration: glassDecorationPageView,
        margin: const EdgeInsets.only(bottom: 40, right: 10),
        height: height * .2,
        width: width * .15,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.perm_media,
            ),
            Icon(Icons.favorite_outline_outlined),
            Icon(Icons.add)
          ],
        ),
      ),
    );
  }
}
