import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter/controllers/article_list_view_controller.dart';
import 'package:test_flutter/pages/retrofit_test/article_list_tile.dart';
import 'package:test_flutter/models/models.dart';

class ArticleListView extends StatelessWidget {
  const ArticleListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qiita Articles'),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final articles =
              ref.watch(articleListViewProvider.select((s) => s.articles));
          return RefreshIndicator(
            child: _buildListView(articles),
            onRefresh: () =>
                ref.read(articleListViewProvider.notifier).fetchArticles(),
          );
        },
      ),
    );
  }

  Widget _buildListView(List<Article> articles) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemBuilder: (context, index) {
          return ArticleListTile(article: articles[index]);
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: articles.length);
  }
}
