import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;
import 'package:pixabay_search_sample/controller/home_screen_controller.dart';
import 'package:pixabay_search_sample/model/image_model/model.dart';
import 'package:pixabay_search_sample/services/url.dart';

HomeController homeController = getx.Get.put(HomeController());

abstract class ApiCalls {
  Future<void> getImage(String value);
}

class ImageDatabase extends ApiCalls {
  List<ImagesPixabay> pixabayImages = [];
  Url url = Url();
  @override
  Future<void> getImage(String text) async {
    try {
      final Response response = await Dio().get(
        '${url.kBaseUrl}${url.getImage}$text&image_type=photo&pretty=true&per_page=${url.perPage}',
      );
      if (response.statusCode == 200) {
        final List hits = response.data['hits'];

        pixabayImages = hits.map(
          (e) {
            return ImagesPixabay.fromMap(e);
          },
        ).toList();
        homeController.getImage(pixabayImages);
      } else if (response.statusCode == 404) {
        print("Error page not found");
        homeController.isLoading.value = true;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
