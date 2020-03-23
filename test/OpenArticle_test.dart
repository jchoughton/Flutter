import 'package:nevis_app/NewsArticle.dart';
import 'package:nevis_app/OpenArticle.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main(){
    testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
      await tester.pumpWidget(OpenArticle(0));
      //NewsArticle temp = NewsArticle(0);
      // Create the Finders.

      final titleFinder = find.byWidget( Text('Impact Investing is Cool'));
      expect(titleFinder, findsOneWidget);
    });

}