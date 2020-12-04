class DataBroker {
  String filename = "DataFile.csv";




  ArrayList<Data> dataList = new ArrayList<Data>();


  void loadData() {

    String[] data = loadStrings(filename);
    String[] headers = split(data[0], ","); 
    
    



    for (int i = 1; i < data.length; i++) {

      String[] row = split(data[i], ",");

      String country = row[1];
     

      for (int j = 2; j < row.length; j++) {


        String deaths = row[j];
        String year = headers[j];
        println(deaths);


        Data d = new Data(country, year, deaths);
        dataList.add(d);
      }




      //println(country);
    }
  }


  int getData(String country, String year) {
    int specificDeaths = 0;
    for ( int i = 0; i < dataList.size(); i++) {


      if (country.equals(dataList.get(i).country) && year.equals(dataList.get(i).year)) {
        println("dataList.get(i).deaths:" + dataList.get(i).deaths);
       
        
        String s = dataList.get(i).deaths;
        String d = s.equals("") ? "0" : s;
        
        specificDeaths = Integer.parseInt(d);
      }
    }
    
   // println(specificDeaths);
    

    return specificDeaths;
  }
}
