import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nytimes_news_project/core/constants/image/image_constants.dart';
import 'package:nytimes_news_project/view/news/model/news_model.dart';

class NewsListItem extends StatelessWidget {
  final Result? result;
  const NewsListItem({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    String mediaUrl;
    if (result?.media?.isNotEmpty == true) {
      mediaUrl = result?.media?[0].mediaMetadata?[0].url ?? "";
    } else {
      mediaUrl = "";
    }
    return ListTile(
      leading: CircleAvatar(
          child: Image.network(
        mediaUrl,
        errorBuilder: (context, error, stackTrace) =>
            Image.asset(ImageConstants.instance.newsPic),
      )),
      title: Text(result?.title ?? ""),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(result?.byline ?? ""),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(result?.section ?? ""),
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
          ),
        ],
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      isThreeLine: true,
    );
  }
}
