import 'package:flutter/material.dart';

import '../constants/image/image_constants.dart';

class ImageNetworkWidget extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;
  const ImageNetworkWidget(
      {super.key, required this.imageUrl, this.width, this.height, this.fit});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: fit,
      errorBuilder: (context, error, stackTrace) =>
          Image.asset(ImageConstants.instance.newsPic),
      width: width,
      height: height,
    );
  }
}
