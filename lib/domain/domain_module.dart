import 'package:newz_peek/data/data_module.dart';
import 'package:newz_peek/domain/usecase/get_news_article_list_usecase.dart';
import 'package:newz_peek/domain/usecase/get_news_article_list_usecase_impl.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final getNewsArticleListUseCaseProvider = Provider<GetNewsArticleListUseCase>(
    (ref) => GetNewsArticleListUseCaseImpl(
        ref.watch(newsArticleRepositoryProvider)));
