class DataBroker {
  String file;
  Table data;
  
  DataBroker(String file){
   
    this.file = file;
  }
  

  void loadData() {

    data = loadTable(file, "header");
    
    for(int i = 0; i < data.getRowCount(); i++){
     String country = data.getString(
      
      
      
    }
    
  }
}

void getData(String country, int year){
 
  
  
  
}
