import 'package:newz_peek/domain/model/news_article.dart';
import 'package:newz_peek/domain/model/news_article_source.dart';
import 'package:newz_peek/domain/model/news_article_list.dart';
import 'package:newz_peek/domain/repository/news_articles_repository.dart';
import 'package:newz_peek/domain/usecase/get_news_article_list_usecase.dart';
import 'package:newz_peek/domain/usecase/get_news_article_list_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mock/domain/repository/news_repository_mock.mocks.dart';

void main() {
  final NewsArticlesRepository repository = MockNewsArticlesRepository();
  final date = DateTime.now();
  final GetNewsArticleListUseCase usecase =
      GetNewsArticleListUseCaseImpl(repository);

  setUp(() {
    when(repository.getNewsArticles('breaking news')).thenAnswer(
      (_) async => NewsArticleList(
        values: [
          NewsArticle(
            source: const NewsEntitySource(
              id: 'cnn',
              name: 'CNN',
            ),
            author: 'title',
            description: 'description',
            title: 'title',
            url: 'url',
            urlToImage: 'urlToImage',
            content: 'content',
            publishedAt: date,
          ),
        ],
      ),
    );
  });

  test('should return NewsList', () async {
    final expected = NewsArticleList(
      values: [
        NewsArticle(
          source: const NewsEntitySource(
            id: 'cnn',
            name: 'CNN',
          ),
          author: 'title',
          description: 'description',
          title: 'title',
          url: 'url',
          urlToImage: 'urlToImage',
          content: 'content',
          publishedAt: date,
        ),
      ],
    );
    final actual = await usecase.execute('breaking news');
    expect(expected, actual);
    verify(repository.getNewsArticles('breaking news')).called(1);
  });
}
