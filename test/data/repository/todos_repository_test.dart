import 'package:newz_peek/data/repository/news_articles_repository_impl.dart';
import 'package:newz_peek/domain/model/news_article.dart';
import 'package:newz_peek/domain/model/news_article_source.dart';
import 'package:newz_peek/domain/model/news_article_list.dart';
import 'package:newz_peek/domain/repository/news_articles_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mock/data/datasource/api/news_api_mock.mocks.dart';

void main() {
  final api = MockNewsDataSource();
  final NewsArticlesRepository repository = NewsArticlesRepositoryImpl(api);
  final date = DateTime.now();

  group('#getNewsList', () {
    setUp(() {
      when(api.allNewsArticles('breaking news')).thenAnswer((_) async => [
            {
              'author': 'author',
              'description': 'description',
              'title': 'title',
              'url': 'url',
              'urlToImage': 'urlToImage',
              'content': 'content',
              'publishedAt': date.toIso8601String(),
            },
          ]);
    });
    test('should return NewsArticleList', () async {
      final actual = await repository.getNewsArticles('breaking news');

      final expected = NewsArticleList(
        values: [
          NewsArticle(
            source: const NewsEntitySource(
              id: 'cnn',
              name: 'CNN',
            ),
            author: 'author',
            description: 'description',
            title: 'title',
            url: 'url',
            urlToImage: 'urlToImage',
            content: 'content',
            publishedAt: date,
          ),
        ],
      );

      expect(actual.values.first.author, expected.values.first.author);

      verify(api.allNewsArticles('breaking news')).called(1);
    });
  });
}
