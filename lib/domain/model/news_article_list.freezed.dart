// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_article_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsArticleList {
  List<NewsArticle> get values => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsArticleListCopyWith<NewsArticleList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsArticleListCopyWith<$Res> {
  factory $NewsArticleListCopyWith(
          NewsArticleList value, $Res Function(NewsArticleList) then) =
      _$NewsArticleListCopyWithImpl<$Res, NewsArticleList>;
  @useResult
  $Res call({List<NewsArticle> values});
}

/// @nodoc
class _$NewsArticleListCopyWithImpl<$Res, $Val extends NewsArticleList>
    implements $NewsArticleListCopyWith<$Res> {
  _$NewsArticleListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsArticleListImplCopyWith<$Res>
    implements $NewsArticleListCopyWith<$Res> {
  factory _$$NewsArticleListImplCopyWith(_$NewsArticleListImpl value,
          $Res Function(_$NewsArticleListImpl) then) =
      __$$NewsArticleListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewsArticle> values});
}

/// @nodoc
class __$$NewsArticleListImplCopyWithImpl<$Res>
    extends _$NewsArticleListCopyWithImpl<$Res, _$NewsArticleListImpl>
    implements _$$NewsArticleListImplCopyWith<$Res> {
  __$$NewsArticleListImplCopyWithImpl(
      _$NewsArticleListImpl _value, $Res Function(_$NewsArticleListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$NewsArticleListImpl(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
    ));
  }
}

/// @nodoc

class _$NewsArticleListImpl extends _NewsArticleList {
  const _$NewsArticleListImpl({required final List<NewsArticle> values})
      : _values = values,
        super._();

  final List<NewsArticle> _values;
  @override
  List<NewsArticle> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'NewsArticleList(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsArticleListImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsArticleListImplCopyWith<_$NewsArticleListImpl> get copyWith =>
      __$$NewsArticleListImplCopyWithImpl<_$NewsArticleListImpl>(
          this, _$identity);
}

abstract class _NewsArticleList extends NewsArticleList {
  const factory _NewsArticleList({required final List<NewsArticle> values}) =
      _$NewsArticleListImpl;
  const _NewsArticleList._() : super._();

  @override
  List<NewsArticle> get values;
  @override
  @JsonKey(ignore: true)
  _$$NewsArticleListImplCopyWith<_$NewsArticleListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
