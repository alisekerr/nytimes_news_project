import 'package:flutter/material.dart';
import 'package:nytimes_news_project/view/news/view/news_list_view.dart';
import 'package:provider/provider.dart';

import 'core/init/navigation/navigation_router.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/init/notifier/app_provider.dart';
import 'core/init/notifier/theme_notifier.dart';

void main() {
  runApp(MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      theme: context.watch<ThemeNotifier>().currentTheme,
      home: const NewsListView(),
    );
  }
}
