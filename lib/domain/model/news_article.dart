import 'package:newz_peek/domain/model/news_article_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_article.freezed.dart';

@freezed
class NewsArticle with _$NewsArticle {
  const factory NewsArticle({
    required NewsEntitySource source,
    required String? author,
    required String? title,
    required String? description,
    required String? url,
    required String? urlToImage,
    required String? content,
    required DateTime? publishedAt,
  }) = _NewsArticle;

  const NewsArticle._();
}
