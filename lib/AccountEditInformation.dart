import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Accounts.dart';

class BuildAccountEditInformation extends StatelessWidget{
  List<String> options = ["First Name", "Last Name", "Location",
    "Occupation", "bank Information"];
  int accountIndex = 0;
  double appHeight = 0;
  double appWidth = 0;
  BuildAccountEditInformation(int userNameIndex, double height, double width) {
    accountIndex = userNameIndex;
    appHeight = height;
    appWidth = width;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Information"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.fitWidth,
            child: FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OpenAccountEditor(accountIndex, 0)),
                  );
                },
                child: Text("${options[0]}")
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OpenAccountEditor(accountIndex, 1)),
                  );
                },
                child: Text("${options[1]}")
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OpenAccountEditor(accountIndex, 2)),
                  );
                },
                child: Text("${options[2]}")
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OpenAccountEditor(accountIndex, 3)),
                  );
                },
                child: Text("${options[3]}")
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OpenAccountEditor(accountIndex, 4)),
                  );
                },
                child: Text("${options[4]}")
            ),
          ),
        ],
      ),
    );
  }
}

class OpenAccountEditor extends StatelessWidget {
  List<String> options = ["First Name", "Last Name", "Location",
    "Occupation", "bank Information"];
  int accountIndex = 0;
  int toChangeIndex = 0;

  OpenAccountEditor(int userIndex, int informationGettingChanged) {
    accountIndex = userIndex;
    toChangeIndex = informationGettingChanged;
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Edit ${options[toChangeIndex]} Information"),
        ),
        body: Column(
          children: <Widget>[
            accountEditor(accountIndex, toChangeIndex)
          ],
        ),
      );
    }
}

Widget accountEditor(int userIndex, int informationGettingChanged) {
  switch(informationGettingChanged) {
    case 0:
    return Column(
      children: <Widget>[
        Text("Eneter new first name"),
        TextField(
          onSubmitted: (String userInput) async {
            changeAccountFirstName(userIndex, userInput);
          },
          decoration: InputDecoration(
              hintText: 'Enter a new first name'
          ),
        ),
      ],
    );
    case 1:
      return Column(
        children: <Widget>[
          Text("Eneter new last name"),
          TextField(
            onSubmitted: (String userInput) async {
              changeAccountLastName(userIndex, userInput);
            },
            decoration: InputDecoration(
                hintText: 'Enter a new last name'
            ),
          ),
        ],
      );
    case 2:
      return Column(
        children: <Widget>[
          Text("Eneter new location"),
          TextField(
            onSubmitted: (String userInput) async {
              changeAccountLocation(userIndex, userInput);
            },
            decoration: InputDecoration(
                hintText: 'Enter a new location'
            ),
          ),
        ],
      );
    case 3:
      return Column(
        children: <Widget>[
          Text("Eneter new occupation"),
          TextField(
            onSubmitted: (String userInput) async {
              changeAccountOccupation(userIndex, userInput);
            },
            decoration: InputDecoration(
                hintText: 'Enter a new occupation'
            ),
          ),
        ],
      );
    case 4:
      return Column(
        children: <Widget>[
          Text("Eneter new bank information (account number)"),
          TextField(
            onSubmitted: (String userInput) async {
              changeAccountBankInformation(userIndex, userInput);
            },
            decoration: InputDecoration(
                hintText: 'Enter a new bank account'
            ),
          ),
        ],
      );
  }
  return Text("NULL");
}