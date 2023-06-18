import 'package:flutter/material.dart';
import 'package:nytimes_news_project/core/widgets/main_appbar_widget.dart';
import '../../../../core/base/view/base_view.dart';
import '../../../core/widgets/news_list_item.dart';
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
/*final sortedNews = value.newsModel.results
            ?.toList()
            .where((result) => result.publishedDate != null)
            .toList();
        sortedNews?.sort((a, b) => DateTime.parse(b.publishedDate!.toString())
            .compareTo(DateTime.parse(a.publishedDate!.toString())));*/
        return Scaffold(
          appBar: const MainAppbarWidget(title: "NY Times Most Popular"),
          body: SafeArea(
              child: ValueListenableBuilder<LoadStatus>(
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
                  })),
        );
      },
    );
  }
}
