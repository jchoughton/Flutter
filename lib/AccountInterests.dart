import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Accounts.dart';

//class BuildAccountInterests extends StatelessWidget {
Widget BuildAccountInterests(int userNameIndex) {

  List<String> accountInterests = getAccountInterests(userNameIndex);

    return Scaffold(
        appBar: AppBar(
          title: Text("Interests"),
        ),
        body: ListView.builder(
                padding: const EdgeInsets.all(18),
                itemCount: globalInterests.length,
                itemBuilder: (BuildContext context,int i){
                  return FlatButton(
                    onPressed: (){selectOrRemoveInterest(userNameIndex, i);},
                   child: Container(
                      height: 50,
                      child:Text(
                          globalInterests[i],
                          style: TextStyle( color: selectedInterest(userNameIndex, i)),
                      ),
                    ),
                  );
                }
                ),
    );
}

void selectOrRemoveInterest(int userNameIndex, int interest){
  List<String> userInterests = getAccountInterests(userNameIndex);
  for(int i = 0; i < userInterests.length; i++){
    if (userInterests[i] == globalInterests[interest]) {
      accountInterests[userNameIndex].removeAt(i);
      return;
    }
  }
  accountInterests[userNameIndex].add(globalInterests[interest]);
}

Color selectedInterest(int userNameIndex, int interest){
  List<String> userInterests = getAccountInterests(userNameIndex);
  for(int i = 0; i < userInterests.length; i++){
    if (userInterests[i] == globalInterests[interest]) {
      return Colors.red;
    }
  }
  return(Colors.black);
}