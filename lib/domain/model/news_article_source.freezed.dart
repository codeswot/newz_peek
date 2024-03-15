// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_article_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsEntitySource {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsEntitySourceCopyWith<NewsEntitySource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEntitySourceCopyWith<$Res> {
  factory $NewsEntitySourceCopyWith(
          NewsEntitySource value, $Res Function(NewsEntitySource) then) =
      _$NewsEntitySourceCopyWithImpl<$Res, NewsEntitySource>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$NewsEntitySourceCopyWithImpl<$Res, $Val extends NewsEntitySource>
    implements $NewsEntitySourceCopyWith<$Res> {
  _$NewsEntitySourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsEntitySourceImplCopyWith<$Res>
    implements $NewsEntitySourceCopyWith<$Res> {
  factory _$$NewsEntitySourceImplCopyWith(_$NewsEntitySourceImpl value,
          $Res Function(_$NewsEntitySourceImpl) then) =
      __$$NewsEntitySourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$NewsEntitySourceImplCopyWithImpl<$Res>
    extends _$NewsEntitySourceCopyWithImpl<$Res, _$NewsEntitySourceImpl>
    implements _$$NewsEntitySourceImplCopyWith<$Res> {
  __$$NewsEntitySourceImplCopyWithImpl(_$NewsEntitySourceImpl _value,
      $Res Function(_$NewsEntitySourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$NewsEntitySourceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewsEntitySourceImpl implements _NewsEntitySource {
  const _$NewsEntitySourceImpl({this.id, this.name});

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'NewsEntitySource(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsEntitySourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsEntitySourceImplCopyWith<_$NewsEntitySourceImpl> get copyWith =>
      __$$NewsEntitySourceImplCopyWithImpl<_$NewsEntitySourceImpl>(
          this, _$identity);
}

abstract class _NewsEntitySource implements NewsEntitySource {
  const factory _NewsEntitySource({final String? id, final String? name}) =
      _$NewsEntitySourceImpl;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$NewsEntitySourceImplCopyWith<_$NewsEntitySourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
