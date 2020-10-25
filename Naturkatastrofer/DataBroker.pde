class DataBroker {
  String file;
  String[] countries;
  String[] years;
  
  
  DataBroker(String file) {

    this.file = file;
  }


  void loadData() {

    String[] data = loadStrings(file);

    countries = splitTokens("data", ",");
    
        println(data);
  }



  void getData(String country, int year) {
  }
}
