import 'package:test_flutter/api/api_client.dart';
import 'package:test_flutter/api/result.dart';
import 'package:test_flutter/models/models.dart';
import 'package:test_flutter/repository/article_repository.dart';
import 'package:dio/dio.dart';

class ArticleRepositoryImpl extends ArticleRepository {
  final ApiClient _client;

  ArticleRepositoryImpl([ApiClient? client])
      : _client = client ?? ApiClient(Dio());

  @override
  Future<Result<List<Article>>> fetchArticles() {
    return _client
        .fetchArticles()
        .then((articles) => Result<List<Article>>.success(articles))
        .catchError((error) => Result<List<Article>>.failure(error));
  }
}
