import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Accounts.dart';

Widget buildAccountInformation(int userNameIndex, double appWidth, double appHeight){
  List<String> userInterestsList = getAccountInterests(userNameIndex);
  String userInterests = '';
  for (int i = 0; i < userInterestsList.length; i++) {
    userInterests = userInterests + " ${userInterestsList[i]}";
  }
  return Column(
    children: <Widget>[
      SizedBox(
        height: appHeight,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            children: <Widget>[
            SizedBox(
              width: appWidth,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  getAccountFullName(userNameIndex),
                  style: TextStyle(fontSize: 65, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: appWidth,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  getAccountLocation(userNameIndex),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              width: appWidth,
              child:FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  getAccountOccupation(userNameIndex),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              width: appWidth,
              child:FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  getAccountCensoredBankInformation(userNameIndex),
                  style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                ),
              ),
            ),
              SizedBox(
                width: appWidth,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    userInterests,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              )
          ],
          ),
        ),
      ),
    ],
  );
}