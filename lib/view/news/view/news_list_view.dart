import 'package:flutter/material.dart';

import '../../../../core/base/view/base_view.dart';
import '../viewModel/news_list_view_model.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<NewsListViewModel>(
      viewModel: NewsListViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (context, value) => Scaffold(
        body: Container(color: Colors.red),
      ),
    );
  }
}
