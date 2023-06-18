import 'package:flutter/material.dart';
import 'package:nytimes_news_project/core/base/model/base_view_model.dart';
import 'package:nytimes_news_project/view/news/model/news_model.dart';
import 'package:nytimes_news_project/view/news/service/news_service.dart';

enum LoadStatus { loading, loaded }

class NewsListViewModel extends ChangeNotifier with BaseViewModel {
  @override
  void init() {}

  @override
  void setContext(BuildContext context) {}

  final _provider = NewsService();

  NewsModel newsModel = NewsModel();
  Result? resultItem = Result();
  List<Result>? sortedNews;
  ValueNotifier<LoadStatus> status = ValueNotifier(LoadStatus.loading);

  Future getNewsData() async {
    try {
      status.value = LoadStatus.loading;
      notifyListeners();
      newsModel = await _provider.getNewsData();
      await sortByDate();
      status.value = LoadStatus.loaded;
      notifyListeners();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future sortByDate() async {
    sortedNews = newsModel.results
        ?.toList()
        .where((result) => result.publishedDate != null)
        .toList();
    sortedNews?.sort((a, b) => DateTime.parse(b.publishedDate!.toString())
        .compareTo(DateTime.parse(a.publishedDate!.toString())));
  }

  String imageParse({required List<Media>? imageData, required int index}) {
    String mediaUrl;
    if (imageData?.isNotEmpty == true) {
      mediaUrl = imageData?[0].mediaMetadata?[index].url ?? "";
    } else {
      mediaUrl = "";
    }
    return mediaUrl;
  }
}
