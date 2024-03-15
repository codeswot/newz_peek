import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_article_source.freezed.dart';

@freezed
class NewsEntitySource with _$NewsEntitySource {
  const factory NewsEntitySource({
    String? id,
    String? name,
  }) = _NewsEntitySource;
}
