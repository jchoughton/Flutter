import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  final _numArticles = 3;
  // #enddocregion RWS-var

  // #docregion _buildSuggestions
  Widget _buildSuggestions() {
    return ListView.builder(
      itemCount: _numArticles,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          final index = i%_numArticles;
          if (index >= _suggestions.length) {
            NewsArticle temp = NewsArticle(index%_numArticles);
            _suggestions.add(temp);
          }
          return _buildButton(_suggestions[index], index);
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
              MaterialPageRoute(builder: (context) => OpenArticleHelper(i)),
          );
        },
       child: Row(
           children: <Widget>[
             Text(
               article.getTitle(i),
               style: _biggerFont,
              ),
    ])
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