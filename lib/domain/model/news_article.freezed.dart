// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsArticle {
  NewsEntitySource get source => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  DateTime? get publishedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsArticleCopyWith<NewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsArticleCopyWith<$Res> {
  factory $NewsArticleCopyWith(
          NewsArticle value, $Res Function(NewsArticle) then) =
      _$NewsArticleCopyWithImpl<$Res, NewsArticle>;
  @useResult
  $Res call(
      {NewsEntitySource source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? content,
      DateTime? publishedAt});

  $NewsEntitySourceCopyWith<$Res> get source;
}

/// @nodoc
class _$NewsArticleCopyWithImpl<$Res, $Val extends NewsArticle>
    implements $NewsArticleCopyWith<$Res> {
  _$NewsArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? content = freezed,
    Object? publishedAt = freezed,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsEntitySource,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsEntitySourceCopyWith<$Res> get source {
    return $NewsEntitySourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsArticleImplCopyWith<$Res>
    implements $NewsArticleCopyWith<$Res> {
  factory _$$NewsArticleImplCopyWith(
          _$NewsArticleImpl value, $Res Function(_$NewsArticleImpl) then) =
      __$$NewsArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NewsEntitySource source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? content,
      DateTime? publishedAt});

  @override
  $NewsEntitySourceCopyWith<$Res> get source;
}

/// @nodoc
class __$$NewsArticleImplCopyWithImpl<$Res>
    extends _$NewsArticleCopyWithImpl<$Res, _$NewsArticleImpl>
    implements _$$NewsArticleImplCopyWith<$Res> {
  __$$NewsArticleImplCopyWithImpl(
      _$NewsArticleImpl _value, $Res Function(_$NewsArticleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? content = freezed,
    Object? publishedAt = freezed,
  }) {
    return _then(_$NewsArticleImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsEntitySource,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$NewsArticleImpl extends _NewsArticle {
  const _$NewsArticleImpl(
      {required this.source,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.content,
      required this.publishedAt})
      : super._();

  @override
  final NewsEntitySource source;
  @override
  final String? author;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? urlToImage;
  @override
  final String? content;
  @override
  final DateTime? publishedAt;

  @override
  String toString() {
    return 'NewsArticle(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, content: $content, publishedAt: $publishedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsArticleImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source, author, title,
      description, url, urlToImage, content, publishedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsArticleImplCopyWith<_$NewsArticleImpl> get copyWith =>
      __$$NewsArticleImplCopyWithImpl<_$NewsArticleImpl>(this, _$identity);
}

abstract class _NewsArticle extends NewsArticle {
  const factory _NewsArticle(
      {required final NewsEntitySource source,
      required final String? author,
      required final String? title,
      required final String? description,
      required final String? url,
      required final String? urlToImage,
      required final String? content,
      required final DateTime? publishedAt}) = _$NewsArticleImpl;
  const _NewsArticle._() : super._();

  @override
  NewsEntitySource get source;
  @override
  String? get author;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get url;
  @override
  String? get urlToImage;
  @override
  String? get content;
  @override
  DateTime? get publishedAt;
  @override
  @JsonKey(ignore: true)
  _$$NewsArticleImplCopyWith<_$NewsArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
