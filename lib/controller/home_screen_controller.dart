import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pixabay_search_sample/model/image_model/model.dart';
import 'package:pixabay_search_sample/services/services.dart';
import 'package:pixabay_search_sample/services/url.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    database.getImage("flower");
    pageviewController.initialPage;
    super.onInit();
  }

  Url url = Url();
  ImageDatabase database = ImageDatabase();
  ScrollController controller = ScrollController();
  var isLoading = true.obs;
  int page = 1;
  final int limit = 20;
  bool hasNextPage = true;
  RxBool isMoreRunning = false.obs;
  bool isLoadMoreRunning = false;

  List<ImagesPixabay> pixabayImages = [];
  final searchController = TextEditingController().obs;

  getImage(List<ImagesPixabay> fetchedImages) {
    pixabayImages = fetchedImages;
    isLoading.value = false;
    update();
    log(pixabayImages.toString());
  }

  searchImage(String text) {
    database.getImage(text);
    update();
  }

  void paginateTask() {
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        page++;
        database.getImage(searchController.value.text);
        update();
      }
    });
  }

  final pageviewController = PageController(initialPage: 0);
  @override
  void dispose() {
    pageviewController.dispose();
    super.dispose();
  }
}
