class ImageConstants {
  ImageConstants._init();
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  String get newsPic => toPng("no_image");

  String toPng(String name) => "assets/images/$name.png";
}
