import 'package:test_flutter/models/models.dart';
import 'package:test_flutter/api/result.dart';

abstract class ArticleRepository {
  Future<Result<List<Article>>> fetchArticles();
}
