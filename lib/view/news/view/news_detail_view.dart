import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nytimes_news_project/core/constants/string/string_constants.dart';
import 'package:nytimes_news_project/core/extension/context_extension.dart';
import 'package:nytimes_news_project/core/widgets/general_body.dart';
import 'package:nytimes_news_project/core/widgets/general_button.dart';
import 'package:nytimes_news_project/core/widgets/image_network_widget.dart';
import 'package:nytimes_news_project/view/news/model/news_model.dart';
import '../../../../core/base/view/base_view.dart';
import '../../../core/constants/navigation/navigation_constants.dart';
import '../../../core/init/navigation/navigation_service.dart';
import '../viewModel/news_list_view_model.dart';

class NewsDetailView extends StatelessWidget {
  const NewsDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<NewsListViewModel>(
      viewModel: NewsListViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.resultItem =
            ModalRoute.of(context)?.settings.arguments as Result?;
      },
      onPageBuilder: (context, value) {
        return GeneralBody(
          title: StringConstants.NY_TIMES,
          widget: Column(
            children: [
              _buildNewsImage(value, value.resultItem, context),
              _buildNewsDate(context, value.resultItem),
              _buildSpacer(),
              _buildNewsTitle(value.resultItem, context),
              _buildSpacer(),
              _buildNewsResultAbstract(value.resultItem, context),
              _buildBackButton(context)
            ],
          ),
        );
      },
    );
  }

  GeneralButton _buildBackButton(BuildContext context) {
    return GeneralButton(
        onPress: () => NavigationService.instance
            .navigateToPageClear(path: NavigationConstants.LIST),
        text: StringConstants.BACK,
        height: context.dynamicHeight(0.05),
        width: context.dynamicWidth(0.8));
  }

  Expanded _buildNewsResultAbstract(Result? result, BuildContext context) {
    return Expanded(
      flex: 50,
      child: Text(
        result?.resultAbstract ?? StringConstants.DATA_NOT_FOUND,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }

  Expanded _buildNewsTitle(Result? result, BuildContext context) {
    return Expanded(
      flex: 20,
      child: Text(
        result?.title ?? StringConstants.DATA_NOT_FOUND,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }

  Expanded _buildNewsDate(BuildContext context, Result? result) {
    return Expanded(
      flex: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            StringConstants.DATE,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            DateFormat('yyyy-MM-dd').format(result!.publishedDate!),
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }

  Expanded _buildNewsImage(
      NewsListViewModel value, Result? result, BuildContext context) {
    return Expanded(
      flex: 80,
      child: ImageNetworkWidget(
        imageUrl: value.imageParse(imageData: result?.media, index: 2),
        width: context.width,
        height: context.dynamicHeight(0.2),
        fit: BoxFit.cover,
      ),
    );
  }

  Spacer _buildSpacer() => const Spacer();
}
