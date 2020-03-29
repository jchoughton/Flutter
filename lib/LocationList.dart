import 'package:flutter/material.dart';
List<double> latitude = [23.348984, -0.585924, 31.453662, -25.059059, 38.364634];
List<double> longitude = [15.810217, -55.828721, 77.296878, 115.106325, 34.007281];
List<String> groupName = ["Africa helpers", "Brazil something",
  "India something else", "Austrlia Fire Relief", "Turkish health"];
List<String> groupSnipits = ["Snippit for Africa helpers which can be modified",
  "Snippit for Brazil something which can be modified",
  "Snippit for India something else which can be modified",
  "Snippit for Austrlia Fire Relied which can be modified",
  "Snippit for Turkish health which can be modified"];
List<String> groupStory = ["11","22","33","44","55"];

class OpenStory extends StatelessWidget{
  int pullFrom;
  OpenStory(int i) {
    pullFrom = i;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(groupName[pullFrom]),
      ),
      body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(child: Text(groupStory[pullFrom])),
          ]
      ),
    );
  }
}