import 'package:flutter/foundation.dart';
import 'package:newz_peek/domain/domain_module.dart';

import 'package:newz_peek/domain/model/news_article_list.dart';

import 'package:newz_peek/domain/usecase/get_news_article_list_usecase.dart';
import 'package:newz_peek/presentation/state/state.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final newsArticleListViewModelStateNotifierProvider =
    StateNotifierProvider<NewsArticleListViewModel, State<NewsArticleList>>(
  (ref) =>
      NewsArticleListViewModel(ref.watch(getNewsArticleListUseCaseProvider)),
);

class NewsArticleListViewModel extends StateNotifier<State<NewsArticleList>> {
  final GetNewsArticleListUseCase _getNewsArticleListUseCase;

  NewsArticleListViewModel(this._getNewsArticleListUseCase)
      : super(const State.init());

  Future<void> getNewsArticles(String searchQuery) async {
    try {
      state = const State.loading();
      final newsArticleList =
          await _getNewsArticleListUseCase.execute(searchQuery);
      state = State.success(newsArticleList);
    } on Exception catch (e) {
      if (kDebugMode) {
        print('An error occurred: $e');
      }
      state = State.error(e);
    }
  }

  @override
  void dispose() {
    // Dispose any resources here
    super.dispose();
  }
}
