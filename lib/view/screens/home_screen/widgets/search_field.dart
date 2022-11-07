import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixabay_search_sample/view/common/common.dart';
import 'package:pixabay_search_sample/view/common/constans.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Container(
      margin: const EdgeInsets.only(top: 5),
      height: height * .06,
      width: width * .8,
      child: TextFormField(
        textAlign: TextAlign.justify,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 5),
            prefixIcon: const Icon(Icons.search_outlined),
            hintText: "Search Images",
            filled: true,
            fillColor: kWhite,
            border: OutlineInputBorder(
                borderRadius: borderRadiusSearchField,
                borderSide: const BorderSide(color: kWhite))),
      ),
    );
  }
}
