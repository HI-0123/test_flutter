import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:test_flutter/models/models.dart';
import 'package:test_flutter/repository/article_repository_impl.dart';

part 'article_list_view_controller.freezed.dart';

@freezed
class ArticleListViewState with _$ArticleListViewState {
  const factory ArticleListViewState({
    @Default(<Article>[]) List<Article> articles,
  }) = _ArticleListViewState;
}

final articleListViewProvider = StateNotifierProvider.autoDispose<
    SettingPageController, ArticleListViewState>((ref) {
  return SettingPageController();
});

class SettingPageController extends StateNotifier<ArticleListViewState> {
  SettingPageController() : super(const ArticleListViewState()) {
    fetchArticles();
  }

  final _articleRepositoryImpl = ArticleRepositoryImpl();

  Future<void> fetchArticles() async {
    await _articleRepositoryImpl.fetchArticles().then(
      (result) {
        result.when(
          success: (articles) {
            state = state.copyWith(articles: articles);
          },
          failure: (error) {
            print(error.message);
          },
        );
      },
    );
  }
}
