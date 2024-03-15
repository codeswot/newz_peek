// Mocks generated by Mockito 5.4.4 from annotations
// in newz_peek/test/mock/data/datasource/api/news_api_mock.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:newz_peek/data/datasource/api/news_data_source.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [NewsDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockNewsDataSource extends _i1.Mock implements _i2.NewsDataSource {
  MockNewsDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<Map<String, dynamic>>> allNewsArticles(
          String? searchQuerry) =>
      (super.noSuchMethod(
        Invocation.method(
          #allNewsArticles,
          [searchQuerry],
        ),
        returnValue: _i3.Future<List<Map<String, dynamic>>>.value(
            <Map<String, dynamic>>[]),
      ) as _i3.Future<List<Map<String, dynamic>>>);

  @override
  _i3.Future<Map<String, dynamic>> getNewsArticle(
          Map<String, dynamic>? newsArticle) =>
      (super.noSuchMethod(
        Invocation.method(
          #getNewsArticle,
          [newsArticle],
        ),
        returnValue:
            _i3.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i3.Future<Map<String, dynamic>>);
}