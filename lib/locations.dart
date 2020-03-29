import 'LocationList.dart';

class Office {
  Office() {
    lat = 0;
    lng = 0;
    name = "NULL";
    snipit = "NULL";
    story = "NULL";
  }
  double lat;
  double lng;
  String name;
  String snipit;
  String story;

  void makeOffice(double pLat, double pLng, String pName, String pSnipit, String pStory){
    lat = pLat;
    lng = pLng;
    name = pName;
    snipit = pSnipit;
    story = pStory;
  }
}

class Locations {
  Locations(){
    offices = [];
  }
  List<Office> offices;

  void setOffices( List<Office> givenOffices) {
    offices = givenOffices;
  }

  void createInvestableCompanies(){
    for(int i = 0; i < groupName.length; i++) {
      Office temp = Office();
      temp.makeOffice(latitude[i], longitude[i], groupName[i],
          groupSnipits[i], groupStory[i]);
      offices.add(temp);
    }
  }

  List<Office> getOffices(){
    return offices;
  }
}

