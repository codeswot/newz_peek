import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:newz_peek/domain/model/news_article.dart';
import 'package:newz_peek/domain/model/news_article_list.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:newz_peek/presentation/viewmodel/news_article_list_viewmodel.dart';

class NewsArticleListPage extends StatelessWidget {
  final _newsArticleListProvider =
      newsArticleListViewModelStateNotifierProvider;

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Articles'),
      ),
      body: Column(
        children: [
          Consumer(
            builder: (context, ref, _) {
              return ref.watch(_newsArticleListProvider).maybeWhen(
                    success: (content) =>
                        _buildNewsArticlesListContainerWidget(ref, content),
                    error: (_) => _buildErrorWidget(),
                    orElse: () => const Expanded(
                        child: Center(child: CircularProgressIndicator())),
                  );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNewsArticlesListContainerWidget(
      WidgetRef ref, final NewsArticleList newsArticleList) {
    return Expanded(child: _buildNewsArticleListWidget(ref, newsArticleList));
  }

  Widget _buildNewsArticleListWidget(
      final WidgetRef ref, final NewsArticleList newsArticleList) {
    if (newsArticleList.length == 0) {
      return const Center(child: Text('No Articlesx'));
    } else {
      return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: newsArticleList.length,
        shrinkWrap: true,
        itemBuilder: (final BuildContext context, final int index) {
          return _buildNewsItemCardWidget(context, ref, newsArticleList[index]);
        },
      );
    }
  }

  Widget _buildNewsItemCardWidget(final BuildContext context,
      final WidgetRef ref, final NewsArticle newsArticle) {
    return InkWell(
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (newsArticle.urlToImage != null) ...[
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: newsArticle.urlToImage!,
                    width: 50,
                    // height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ] else
              const Icon(
                Icons.image,
                size: 80,
              ),
            const SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newsArticle.title ?? '',
                      maxLines: 2,
                      style: Theme.of(context).textTheme.titleLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      newsArticle.description ?? '',
                      style: Theme.of(context).textTheme.bodyMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                    // const SizedBox(height: 8),
                    Text(
                      DateFormat('yyyy/MM/dd')
                          .format(newsArticle.publishedAt ?? DateTime.now()),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // onTap: () => Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (_) => QuerryNewsArticleFormPage(NewsArticle),
      //   ),
      // ),
    );
  }

  Widget _buildErrorWidget() {
    return const Center(child: Text('An error has occurred!'));
  }
}
