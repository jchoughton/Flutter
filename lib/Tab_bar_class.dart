import 'package:flutter/cupertino.dart';
import 'HomeTab.dart';
import 'NewsTab.dart';
import 'ConnectTab.dart';
import 'InvestTab.dart';
import 'AccountTab.dart';

class NevisTabBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            title: Text('News'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            title: Text('Invest'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            title: Text('Connect'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.gear_big),
            title: Text('Account')
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: HomeTab(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: NewsTab(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: InvestTab(),
              );
            });

          case 3:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ConnectTab(),
              );
            });
          case 4:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: AccountTab(),
              );
            });
        }
      },
    );
  }
}