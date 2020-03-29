import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildAccountLogOut() {
  return Row(
    children: <Widget>[
      FlatButton(
      onPressed: (){},
        child: Row(
          children: <Widget>[
            Text("Log Out",
            style: TextStyle(fontSize: 30),
            )
          ]
        )
      ),
    ]
  );
}