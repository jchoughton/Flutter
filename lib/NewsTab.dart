import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'OpenArticle.dart';
import 'NewsArticle.dart';

class NewsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News',
      home: NewsTabHelper(),
    );
  }
}

class NewsTabHelper extends StatefulWidget {
  @override
  _NewsTabState createState() {
    return _NewsTabState();
  }
}

class _NewsTabState extends State<NewsTabHelper> {
  final _suggestions = <NewsArticle>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _numberOfArticles = 3;
  // #enddocregion RWS-var

  // #docregion _buildSuggestions
  Widget _buildSuggestions() {
    return ListView.builder(
      itemCount: _numberOfArticles,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          final articleIndex = i%_numberOfArticles;
          if (articleIndex >= _suggestions.length) {
            NewsArticle temp = NewsArticle(articleIndex%_numberOfArticles);
            _suggestions.add(temp);
          }
          return _buildButton(_suggestions[articleIndex], articleIndex);
        });
  }
  // #enddocregion _buildSuggestions

  // #docregion _buildRow
  Widget _buildButton(NewsArticle article, int i) {
    return Row( children: <Widget>[
      FlatButton(
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OpenArticle(i)),
          );
        },
       //child: Flexible(
         child: Row(
           children: <Widget>[
             Text(
               """
               ${article.getArticleTitle(i)}
               
               ${article.getArticleSnipit(i)}
               """,
               style: _biggerFont,
               softWrap: true,
               maxLines: 20,
              ),
    ])
    //)
      )],
      );
    //]);
  }
  // #enddocregion _buildRow

  // #docregion RWS-build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NEWS'),
      ),
      body: _buildSuggestions(),
    );
  }
// #enddocregion RWS-build
// #docregion RWS-var
}