class DataBroker {
  String file; 
  Table data;
  
  DataBroker(String file) {

    this.file = file;
  }


  void loadData() {

     data = loadTable(file, "header");
     println(data.getColumnCount());
    
  }



  void getData(String country, int year) {
  }
}
