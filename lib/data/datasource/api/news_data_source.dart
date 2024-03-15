import 'package:newz_peek/data/entity/news_articles_entity.dart';

abstract class NewsDataSource {
  Future<NewsArticleEntityList> allNewsArticles(final String searchQuerry);
  Future<NewsArticleEntity> getNewsArticle(final NewsArticleEntity newsArticle);
}
