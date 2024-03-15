import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newz_peek/data/datasource/api/news_data_source.dart';
import 'package:newz_peek/data/entity/news_articles_entity.dart';

class NewsDataSourceImpl implements NewsDataSource {
  final String apiKey;

  NewsDataSourceImpl(this.apiKey);

  @override
  Future<NewsArticleEntityList> allNewsArticles(String searchQuery) async {
    final url =
        'https://newsapi.org/v2/everything?q=$searchQuery&apiKey=$apiKey';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        List<dynamic> articles = jsonData['articles'];

        List<Map<String, dynamic>> newsArticles =
            articles.map((article) => article as Map<String, dynamic>).toList();

        return newsArticles;
      } else {
        throw Exception('Failed to load news articles: ${response.body}');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<NewsArticleEntity> getNewsArticle(NewsArticleEntity news) async {
    throw UnimplementedError();
  }
}
