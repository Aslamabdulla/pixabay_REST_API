import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pixabay_search_sample/model/image_model/model.dart';

class HomeController extends GetxController {
  List<ImagesPixabay> pixabayImages = [];
  final searchController = TextEditingController().obs;
  Future<void> searchData() async {
    final searchKeyWord = searchController.value.text;
  }

  getImage(List<ImagesPixabay> fetchedImages) {
    pixabayImages = fetchedImages;
    update();
    log(pixabayImages.toString());
  }
}
