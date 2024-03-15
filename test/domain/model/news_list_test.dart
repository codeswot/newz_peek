import 'package:newz_peek/domain/model/news_article.dart';
import 'package:newz_peek/domain/model/news_article_source.dart';
import 'package:newz_peek/domain/model/news_article_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('[] operator', () {
    group('when id value is valid', () {
      test('should return specified news', () {
        final actual = NewsArticleList(values: [
          _buildNews('cnn'),
          _buildNews('bbc'),
          _buildNews('nta'),
        ])[2];
        final expected = _buildNews('nta');
        expect(actual, expected);
      });
    });

    group('when id value is invalid', () {
      test('should throw exception', () {
        final newsList = NewsArticleList(values: [
          _buildNews('cnn'),
          _buildNews('bbc'),
          _buildNews('fox news'),
          _buildNews('nta'),
        ]);
        expect(() => newsList[4], throwsRangeError);
      });
    });
  });

  group('length getter', () {
    group('when news list is empty', () {
      test('should return 0', () {
        final actual = const NewsArticleList(values: []).length;
        expect(actual, 0);
      });
    });

    group('when news list is not empty', () {
      test('should return 2', () {
        final actual = NewsArticleList(values: [
          _buildNews('cnn'),
          _buildNews('bbc'),
        ]).length;
        expect(actual, 2);
      });
    });
  });
}

NewsArticle _buildNews(final String id) {
  return NewsArticle(
    source: NewsEntitySource(id: id, name: id),
    author: 'author$id',
    description: 'description$id',
    title: 'title$id',
    url: 'url$id',
    urlToImage: 'urlToImage$id',
    content: 'content$id',
    publishedAt: DateTime.parse('2021-07-01'),
  );
}
