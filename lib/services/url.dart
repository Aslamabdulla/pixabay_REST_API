import 'package:pixabay_search_sample/services/env.dart';
import 'package:pixabay_search_sample/services/services.dart';

class Url {
  String kBaseUrl = 'https://pixabay.com/api';
  String getImage = '/?key=$apiKey&q=';
  int perPage = 200;
}
