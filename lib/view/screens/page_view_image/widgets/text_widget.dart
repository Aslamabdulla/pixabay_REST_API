import 'package:flutter/material.dart';
import 'package:pixabay_search_sample/view/common/constans.dart';

class TextWidgetWithSize extends StatelessWidget {
  final String text;
  final double size;
  final String family;
  final FontWeight weight;
  const TextWidgetWithSize({
    Key? key,
    required this.text,
    required this.size,
    required this.family,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: family,
          fontSize: size,
          fontWeight: weight,
          color: kBlack),
    );
  }
}
