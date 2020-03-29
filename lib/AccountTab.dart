import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Accounts.dart';
import 'AccountInformation.dart';
import 'AccountInterests.dart';
import 'AccountEditInformation.dart';
import 'AccountLogOut.dart';

class AccountTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Account',
      home: AccountTabHelper(),
    );
  }
}

class AccountTabHelper extends StatefulWidget {
  @override
  _AccountTabState createState() {
    return _AccountTabState();
  }
}

class _AccountTabState extends State<AccountTabHelper> {

  Widget _buildAccountTab(BuildContext context) {
    double phoneHeight = MediaQuery.of(context).size.height;
    double phoneWidth = MediaQuery.of(context).size.width;
    final int userNameIndex = findAccountIndex("JDeer");
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              //Information
              height: phoneHeight/2,
              child: buildAccountInformation(userNameIndex, phoneWidth, phoneHeight/2),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              //Edit Account
              height:  phoneHeight/9,
              child: FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          BuildAccountEditInformation(userNameIndex, phoneWidth, phoneHeight)),
                    );
                  },
                  child: Row(
                      children: <Widget>[
                        Text("Edit Account Information",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ]
                  )
              ), //
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(//buildAccountInterests(userNameIndex),
              //Interests
              height: phoneHeight/9,
              child: FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          BuildAccountInterests(userNameIndex)),
                    );
                  },
                  child: Row(
                      children: <Widget>[
                        Text("View and Edit Interests",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ]
                  )
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              //Log Out
              height: phoneHeight/10,
              child: buildAccountLogOut(),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: _buildAccountTab(context),
    );
  }
}

