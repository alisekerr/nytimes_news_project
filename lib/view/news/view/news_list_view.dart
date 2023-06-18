import 'package:flutter/material.dart';
import 'package:nytimes_news_project/core/constants/string/string_constants.dart';

import 'package:nytimes_news_project/core/widgets/general_body.dart';

import '../../../../core/base/view/base_view.dart';
import '../components/news_list_item.dart';
import '../viewModel/news_list_view_model.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<NewsListViewModel>(
      viewModel: NewsListViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.getNewsData();
      },
      onPageBuilder: (context, value) {
        return GeneralBody(
          title: StringConstants.NY_TIMES,
          widget: ValueListenableBuilder<LoadStatus>(
              valueListenable: value.status,
              builder: (context, status, child) {
                if (status == LoadStatus.loading) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return ListView.builder(
                    itemCount: value.sortedNews?.length,
                    itemBuilder: (context, index) {
                      final result = value.sortedNews?[index];
                      debugPrint(result?.publishedDate.toString());
                      return NewsListItem(
                        result: result,
                      );
                    },
                  );
                }
              }),
        );
      },
    );
  }
}
