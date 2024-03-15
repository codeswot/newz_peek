import 'package:newz_peek/domain/model/news_article_list.dart';
import 'package:newz_peek/domain/repository/news_articles_repository.dart';
import 'package:newz_peek/domain/usecase/get_news_article_list_usecase.dart';

class GetNewsArticleListUseCaseImpl implements GetNewsArticleListUseCase {
  final NewsArticlesRepository _repository;

  const GetNewsArticleListUseCaseImpl(this._repository);

  @override
  Future<NewsArticleList> execute(searchQuerry) =>
      _repository.getNewsArticles(searchQuerry);
}
