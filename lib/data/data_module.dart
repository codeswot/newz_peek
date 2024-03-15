import 'package:newz_peek/data/repository/news_articles_repository_impl.dart';
import 'package:newz_peek/domain/repository/news_articles_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'datasource/api/news_data_source.dart';
import 'datasource/api/news_data_source_impl.dart';

final newsArticleDataSourceProvider = Provider<NewsDataSource>(
    (_) => NewsDataSourceImpl('8399e45b001d4476af67845a552c9d39'));
final newsArticleRepositoryProvider = Provider<NewsArticlesRepository>((ref) =>
    NewsArticlesRepositoryImpl(ref.watch(newsArticleDataSourceProvider)));
