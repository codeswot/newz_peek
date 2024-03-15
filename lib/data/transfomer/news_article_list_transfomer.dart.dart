import 'package:newz_peek/data/entity/news_articles_entity.dart';
import 'package:newz_peek/data/transfomer/news_article_transfomer.dart';
import 'package:newz_peek/domain/model/news_article_list.dart';

class NewsArticleListTransfomer {
  static NewsArticleList transformToModel(
      final NewsArticleEntityList entities) {
    final values = entities
        .map((entity) => NewsArticleTransfomer.transformToModel(entity))
        .toList();
    return NewsArticleList(values: values);
  }
}
