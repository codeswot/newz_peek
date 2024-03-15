import 'package:newz_peek/domain/model/news_article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_article_list.freezed.dart';

@freezed
class NewsArticleList with _$NewsArticleList {
  const factory NewsArticleList({required List<NewsArticle> values}) =
      _NewsArticleList;

  const NewsArticleList._();

  operator [](final int index) => values[index];

  int get length => values.length;

  NewsArticleList addArticle(final NewsArticle newsArticle) =>
      copyWith(values: [...values, newsArticle]);
}
