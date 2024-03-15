import 'package:newz_peek/data/datasource/api/news_data_source.dart';
import 'package:newz_peek/data/transfomer/news_article_list_transfomer.dart.dart';

import 'package:newz_peek/domain/model/news_article_list.dart';
import 'package:newz_peek/domain/repository/news_articles_repository.dart';

class NewsArticlesRepositoryImpl implements NewsArticlesRepository {
  final NewsDataSource database;

  const NewsArticlesRepositoryImpl(this.database);

  @override
  Future<NewsArticleList> getNewsArticles(String searchQuerry) async {
    final newsListEntity = await database.allNewsArticles(searchQuerry);
    return NewsArticleListTransfomer.transformToModel(newsListEntity);
  }
}
