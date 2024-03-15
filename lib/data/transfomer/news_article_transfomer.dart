import 'package:newz_peek/data/entity/news_articles_entity.dart';
import 'package:newz_peek/domain/model/news_article.dart';
import 'package:newz_peek/domain/model/news_article_source.dart';

class NewsArticleTransfomer {
  static NewsArticle transformToModel(final NewsArticleEntity entity) {
    return NewsArticle(
      source: NewsEntitySource(id: entity['id'], name: entity['name']),
      author: entity['author'],
      title: entity['title'],
      description: entity['description'],
      publishedAt: DateTime.parse(entity['publishedAt']),
      url: entity['url'],
      content: entity['content'],
      urlToImage: entity['urlToImage'],
    );
  }

  // static NewsArticleEntity transformToMap(final NewsArticle model) {
  //   return {
  //     'source': model,
  //     'title': model.title,
  //     'description': model.description,
  //     'is_completed': model.isCompleted ? 1 : 0,
  //     'publishedAt': model.dueDate.toIso8601String(),
  //   };
  // }

  // static NewsArticleEntity transformToNewEntityMap(
  //   final String title,
  //   final String description,
  //   final bool isCompleted,
  //   final DateTime dueDate,
  // ) {
  //   return {
  //     'id': null,
  //     'title': title,
  //     'description': description,
  //     'is_completed': isCompleted ? 1 : 0,
  //     'due_date': dueDate.toIso8601String(),
  //   };
  // }
}
