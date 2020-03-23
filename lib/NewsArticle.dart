import 'package:flutter/material.dart';
import 'OpenArticle.dart';

final titles = ["Impact Investing is Cool",
  "Nevis is Amazing",
  "Help Nevis Help the World"];
final pictures = ["https://socialcapitalmarkets.net/wp-content/uploads/2019/10/SOCAP19-propel-capital-impact-investing.jpg",
"https://image.freepik.com/free-photo/wow-face-asian-man-isolated-background_39688-1314.jpg",
"https://cdn2.hubspot.net/hubfs/2116331/Investing.jpg"];
final articles = ["Impact Investment is a cool way of investing in ideas across the world. By investing in an idea you can help small companies in that field improve the world.",
  "Nevis is the best new social app company that will not only let you invest in impact investment but also let you connect with other Nevites like you.",
  "Nevites like you can support Nevis support companies globaly to improve the world!!!!!"];

final snipits = ["A","B","C"];
/*["Learn more about impact investing",
  "Learn more about Nevis and about how Nevis will change impact investing",
  "By investing with Nevis you will be helping companies around the globe."];*/

class NewsArticle {
  String articleTitle;
  String articlePicture;
  String articleBody;
  String articleSnipit;

  NewsArticle(int articleIndex) {
    articleTitle = titles[articleIndex];
    articlePicture = pictures[articleIndex];
    articleBody = articles[articleIndex];
    articleSnipit = snipits[articleIndex];
  }

  String getArticleTitle(int articleIndex) {
    return (articleTitle);
  }

  String getArticlePicture(int articleIndex) {
    return (articlePicture);
  }

  String getArticleSnipit(int articleIndex){
    return (articleSnipit);
  }

  String getArticleBody(int articleIndex) {
    return (articleBody);
  }

  Widget openArticle(int articleIndex) {
    return OpenArticle(articleIndex);
  }
}
