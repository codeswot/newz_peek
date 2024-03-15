import 'package:newz_peek/domain/model/news_article_list.dart';

abstract class GetNewsArticleListUseCase {
  Future<NewsArticleList> execute(
    final String querry,
  );
}
