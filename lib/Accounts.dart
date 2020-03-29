List<String> userNames = ["NULL","JDeer", "Nevis123"];
List<String> passwords = ["NULL","JDeer", "1234"];
List<String> firstName = ["NULL","John", "Nicky"];
List<String> lastName = ["NULL","Deer", "Nevisss"];
List<String> location = ["NULL","New York, NY", "Salem, VA"];
List<String> occupation = ["NULL","Farmer", "Investing Advisor"];
List<String> bankInformation = ["NULL", "1234567890", "0987654321"];
List<double> bankTotal = [-1, 1000000.00, 99999999999.99];
List<String> globalInterests = ["Agriculture","Communication","Health", "History",
                                "Preservation","Trade", "Travel"];
List<List<String> > accountInterests = [["Null"],["Agriculture"],["Trade","Travel"]];

int findAccountIndex(String userName){
  for (int i = 0; i < userNames.length; i++) {
    if (userNames[i] == userName) {
      return(i);
    }
  }
  return(0);
}

String getAccountFullName(int userNameIndex){
  return(firstName[userNameIndex] + " " + lastName[userNameIndex]);
}

String getAccountLocation(int userNameIndex){
  return(location[userNameIndex]);
}

String getAccountOccupation(int userNameIndex){
  return(occupation[userNameIndex]);
}

String getAccountBankInformation(int userNameIndex){
  return(bankInformation[userNameIndex]);
}

double getAccountBankTotal(int userNameIndex) {
  return (bankTotal[userNameIndex]);
}

String getAccountCensoredBankInformation(int userNameIndex){
  String censoredBankInformation = "****"
      + bankInformation[userNameIndex].substring(bankInformation[userNameIndex].length-4,
          bankInformation[userNameIndex].length);
  return(censoredBankInformation);
}

List<String> getAccountInterests(int userNameIndex){
  return(accountInterests[userNameIndex]);
}

void changeAccountFirstName(int userNameIndex, String newFirstName){
  firstName[userNameIndex] = newFirstName;
}

void changeAccountLastName(int userNameIndex, String newLastName){
  lastName[userNameIndex] = newLastName;
}
void changeAccountLocation(int userNameIndex, String newLocation){
  location[userNameIndex] = newLocation;
}

void changeAccountOccupation(int userNameIndex, String newOccupation){
  occupation[userNameIndex] = newOccupation;
}

void changeAccountBankInformation(int userNameIndex, String newBankInformation){
  bankInformation[userNameIndex] = newBankInformation;
}

void addAccountInterest(int userNameIndex, String newInterest){
 accountInterests[userNameIndex].add(newInterest);
}

void removeAccountInterest(int userNameIndex, String interestToRemove){
  for(int i = 0; i < accountInterests[userNameIndex].length; i++) {
    if(accountInterests[userNameIndex][i] == interestToRemove) {
      accountInterests[userNameIndex].removeAt(i);
    }
  }
}