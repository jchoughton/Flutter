import 'package:flutter/material.dart';
import 'package:nevis_app/NewsArticle.dart';
class OpenArticle extends StatelessWidget{
  NewsArticle pullFrom;
  OpenArticle(int i) {
    pullFrom = NewsArticle(i);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pullFrom.articleTitle),
      ),
      body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              child: Image.network(pullFrom.articlePicture),
              width: 250,
              height: 250,
            ),
            Flexible(child: Text(pullFrom.articleBody)),
          ]
      ),
    );
  }
}