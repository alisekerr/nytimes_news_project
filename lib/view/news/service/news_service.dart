import 'package:nytimes_news_project/core/init/network/network_manager.dart';
import 'package:nytimes_news_project/view/news/model/news_model.dart';

class NewsService {
  final NetworkManager _client = NetworkManager();
  final userKey = "z1VyPHhnnCr0u8YAokW6GszI0JRuHfqG";
  Future<NewsModel> getNewsData() async {
    final response = await _client.getWithHeaders(
      path: "/mostpopular/v2/viewed/7.json?api-key=$userKey",
    );
    return NewsModel.fromJson(response.data);
  }
}
