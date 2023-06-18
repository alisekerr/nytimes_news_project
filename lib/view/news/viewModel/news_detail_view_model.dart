import 'package:flutter/material.dart';
import 'package:nytimes_news_project/core/base/model/base_view_model.dart';
import 'package:nytimes_news_project/view/news/service/news_service.dart';

class NewsDetailViewModel extends ChangeNotifier with BaseViewModel {
  @override
  void init() {}

  @override
  void setContext(BuildContext context) {}

  final _provider = NewsService();
}
