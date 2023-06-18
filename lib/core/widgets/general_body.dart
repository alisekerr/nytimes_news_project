import 'package:flutter/material.dart';
import 'package:nytimes_news_project/core/constants/string/string_constants.dart';

import 'main_appbar_widget.dart';

class GeneralBody extends StatelessWidget {
  final String? title;
  final Widget widget;
  const GeneralBody({super.key, this.title, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbarWidget(title: title ?? StringConstants.DATA_NOT_FOUND),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: widget,
        ),
      ),
    );
  }
}
