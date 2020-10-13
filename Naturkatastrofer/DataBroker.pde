class DataBroker {
  String file;
  Table data;
  
  DataBroker(String file){
   
    this.file = file;
  }
  

  void loadData() {

    data = loadTable(file, "header");
    
    for(int i = 0; i < data.getRowCount(); i++){
     TableRow row = data.getRow(i);
     
 String country = row.getString("Country Name");
      println(country);
      
      
    }
    
  }
}

void getData(String country, int year){
 
  
  
  
}
