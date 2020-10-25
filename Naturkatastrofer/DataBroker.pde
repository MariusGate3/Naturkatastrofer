class DataBroker {
  String file; 
  Table data;

  DataBroker(String file) {

    this.file = file;
  }


  void loadData() {

    data = loadTable(file, "header");

    for ( int i = 0; i < data.getRowCount(); i++) {
      for ( int j = 0; i < data.getColumnCount(); j++ {


        String Country = data.getString(i, "Country Name"); 
          int year = data
      }
    }
  }


  void getData(String country, int year) {
  }

  //  ArrayList getAll(String country){

  //   for(int i = 1; i < 
  //   return data;

  //  }
}
