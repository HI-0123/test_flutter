import 'package:flutter/material.dart';
import 'package:test_flutter/models/models.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleDetailWebView extends StatelessWidget {
  const ArticleDetailWebView({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Center(
        child: WebView(initialUrl: article.url),
      ),
    );
  }
}
