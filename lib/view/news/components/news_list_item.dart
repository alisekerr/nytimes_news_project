import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nytimes_news_project/core/base/view/base_view.dart';
import 'package:nytimes_news_project/core/constants/color/color_constants.dart';
import 'package:nytimes_news_project/view/news/model/news_model.dart';
import 'package:nytimes_news_project/view/news/viewModel/news_list_view_model.dart';
import '../../../core/constants/navigation/navigation_constants.dart';
import '../../../core/constants/string/string_constants.dart';
import '../../../core/init/navigation/navigation_service.dart';
import '../../../core/widgets/image_network_widget.dart';

class NewsListItem extends StatelessWidget {
  final Result? result;
  const NewsListItem({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return BaseView<NewsListViewModel>(
      viewModel: NewsListViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (context, value) => GestureDetector(
        onTap: () {
          NavigationService.instance
              .navigateToPage(path: NavigationConstants.DETAIL, data: result);
        },
        child: ListTile(
          leading: _buildImage(value),
          title: _buildTitle(context),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildShortArticle(context),
              _buildDateAndSection(context),
            ],
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          isThreeLine: true,
        ),
      ),
    );
  }

  CircleAvatar _buildImage(NewsListViewModel value) {
    return CircleAvatar(
        backgroundColor: ColorConstants.transparentColor,
        child: ImageNetworkWidget(
          imageUrl: value.imageParse(imageData: result?.media, index: 0),
        ));
  }

  Text _buildTitle(BuildContext context) {
    return Text(
      result?.title ?? StringConstants.DATA_NOT_FOUND,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }

  Text _buildShortArticle(BuildContext context) {
    return Text(
      result?.resultAbstract ?? StringConstants.DATA_NOT_FOUND,
      style: Theme.of(context).textTheme.titleSmall,
      maxLines: 2,
    );
  }

  Row _buildDateAndSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          result?.section ?? StringConstants.DATA_NOT_FOUND,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Row(
          children: [
            const Icon(Icons.date_range),
            Text(
              DateFormat('yyyy-MM-dd').format(result!.publishedDate!),
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ],
    );
  }
}
