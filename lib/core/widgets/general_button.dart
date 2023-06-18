import 'package:flutter/material.dart';
import 'package:nytimes_news_project/core/constants/string/string_constants.dart';

class GeneralButton extends StatelessWidget {
  final VoidCallback? onPress;
  final double width;
  final double height;
  const GeneralButton(
      {super.key,
      required this.onPress,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: onPress, child: const Text(StringConstants.BACK)),
    );
  }
}
