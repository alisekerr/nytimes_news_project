import 'package:flutter/material.dart';
import 'package:nytimes_news_project/view/news/view/news_detail_view.dart';
import 'package:nytimes_news_project/view/news/view/news_list_view.dart';

import '../../constants/navigation/navigation_constants.dart';

class NavigationRoute {
  static NavigationRoute? _instance;
  static NavigationRoute get instance {
    _instance ??= NavigationRoute._init();
    return _instance!;
  }

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.DETAIL:
        return normalNavigate(const NewsDetailView(), args.arguments);
      case NavigationConstants.LIST:
        return normalNavigate(const NewsListView(), args.arguments);
    }
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text("NOT FOUND"),
      ),
    );
  }
}

MaterialPageRoute normalNavigate(Widget widget, Object? obj) {
  return MaterialPageRoute(
      builder: (context) => widget, settings: RouteSettings(arguments: obj));
}
