import 'package:flutter/material.dart';
import 'package:test_flutter/models/models.dart';
import 'article_web_view.dart';

class ArticleListTile extends StatelessWidget {
  const ArticleListTile({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: Image.network(
          article.user.profileImageUrl,
          width: 44,
          height: 44,
          errorBuilder: (context, exception, stacktrace) {
            return const Text('Q');
          },
        ),
      ),
      title: Text(article.title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ArticleDetailWebView(article: article),
          ),
        );
      },
    );
  }
}
