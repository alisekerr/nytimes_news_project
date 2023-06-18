import 'package:flutter/material.dart';

import '../constants/color/color_constants.dart';

class CustomSnackBar {
  final String message;

  const CustomSnackBar({
    required this.message,
  });

  static show(
    BuildContext context, {
    required String message,
    required bool isSuccess,
  }) {
    var sizer = MediaQuery.of(context).size;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 0.0,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height - sizer.height * 0.5,
          left: sizer.width * 0.2,
          right: sizer.width * 0.2,
        ),
        showCloseIcon: true,
        closeIconColor: ColorConstants.whiteColor,
        content: Center(child: Text(message)),
        duration: const Duration(seconds: 2),
        backgroundColor: isSuccess
            ? ColorConstants.lightGreenColor
            : ColorConstants.lightRedColor,
      ),
    );
  }
}
