import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pixabay_search_sample/model/image_model/model.dart';
import 'package:pixabay_search_sample/services/services.dart';

class HomeController extends GetxController {
  ImageDatabase database = ImageDatabase();
  final controller = ScrollController();
  var isLoading = true.obs;
  @override
  void onInit() {
    database.getImage("flower");
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        fetch();
      }
    });
    super.onInit();
  }

  List<ImagesPixabay> pixabayImages = [];
  final searchController = TextEditingController().obs;

  getImage(List<ImagesPixabay> fetchedImages) {
    pixabayImages = fetchedImages;
    update();
    log(pixabayImages.toString());
  }

  searchImage(String text) {
    database.getImage(text);
    update();
  }

  Future fetch() async {
    database.getImage(searchController.value.text);
  }
}
