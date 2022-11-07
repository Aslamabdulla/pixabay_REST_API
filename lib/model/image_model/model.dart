class ImagesPixabay {
  final int likes;
  final String previewURL;

  final String webformatURL;

  ImagesPixabay(
      {required this.webformatURL,
      required this.previewURL,
      required this.likes});

  factory ImagesPixabay.fromMap(Map<String, dynamic> map) {
    return ImagesPixabay(
      webformatURL: map['webformatURL'],
      previewURL: map['previewURL'],
      likes: map['likes'],
    );
  }
}
