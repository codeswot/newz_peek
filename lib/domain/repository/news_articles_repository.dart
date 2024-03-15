import 'package:newz_peek/domain/model/news_article_list.dart';

abstract class NewsArticlesRepository {
  Future<NewsArticleList> getNewsArticles(String searchQuerry);
}
