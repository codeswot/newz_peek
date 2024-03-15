import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newz_peek/presentation/viewmodel/news_article_list_viewmodel.dart';

final newsArticleFormViewModelProvider =
    Provider.autoDispose<NewsArticleViewFormModel>((ref) {
  final newsArticleListViewModel =
      ref.watch(newsArticleListViewModelStateNotifierProvider.notifier);
  return NewsArticleViewFormModel(newsArticleListViewModel);
});

class NewsArticleViewFormModel {
  final NewsArticleListViewModel _newsArticleListViewModel;
  String _querry = 'Breaking News';

  NewsArticleViewFormModel(this._newsArticleListViewModel) {
    //
  }
  void fetchNews() {
    _newsArticleListViewModel.getNewsArticles(_querry);
  }

  String initialQuerryValue() => _querry;
  setQuerry(final String value) => _querry = value;
  String? validate() {
    if (_querry.isEmpty) {
      return 'You are required to provide a search term';
    } else {
      return null;
    }
  }
}
