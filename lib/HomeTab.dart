import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'Accounts.dart';
import 'locations.dart';
import 'LocationList.dart';



class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final LatLng _center = const LatLng(0, 0);
  List<Marker> _markers = [];
  final int userNameIndex = findAccountIndex("JDeer");
  Locations investableCompanies = new Locations();



  @override
  void initState(){
    super.initState();
    investableCompanies.createInvestableCompanies();
    for (int i = 0; i < investableCompanies.getOffices().length;i++) {
      _markers.add( Marker(
        markerId: MarkerId(investableCompanies.getOffices()[i].name),
        position: LatLng(investableCompanies.getOffices()[i].lat,
                          investableCompanies.getOffices()[i].lng),
        infoWindow: InfoWindow(
          title: investableCompanies.getOffices()[i].name,
          snippet: investableCompanies.getOffices()[i].snipit,
        ),
      ));
    }
  }
  @override
  Widget build(BuildContext context) {
    double phoneHeight = MediaQuery.of(context).size.height;
    double phoneWidth = MediaQuery.of(context).size.width;
    final _biggerFont = const TextStyle(fontSize: 18.0);
    final _numberOfArticles = 3;

    Widget _buildButton(int i, BuildContext context) {
      return DecoratedBox(
          decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
                bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
              ),
          ),
          child: SizedBox(
            width: phoneWidth/2,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: FlatButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OpenStory(i)),
                );
              },
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: phoneWidth/2,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                        "${groupName[i]}",
                        style: _biggerFont,
                        softWrap: true,
                        maxLines: 20,
                      ),
                    ),
                    )]),
            ),
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HOME'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: phoneWidth,
              height: phoneHeight/2,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 1.0,
                ),
                markers: Set.from(_markers),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  width: phoneWidth/2,
                  height: phoneHeight/4,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: phoneHeight/8,
                        child: Text("You're account total is:"),
                      ),
                      FittedBox(
                        child: Text(
                            "${getAccountBankTotal(userNameIndex)}",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  )
                ),
                Container(
                  width: phoneWidth/2,
                  height: phoneHeight/4,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(16.0),
                      itemBuilder: (context, i) {
                        final articleIndex = i%groupName.length;
                        return _buildButton(articleIndex, context);
                      }),
                ),
              ],)

          ],
        ),
      ),
    );//HomeTabInformation();
  }
}
