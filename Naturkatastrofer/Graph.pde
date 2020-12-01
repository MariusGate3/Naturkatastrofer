class Graph extends DataBroker {
float rectWidth =   412;
float xSpacer = rectWidth/114;
float ySpacer = 200;

  void display(DataBroker db, inputField f, inputField f1) {
    


    
    fill(200);
    rect(25, 25, width-50, height - 150);


    for ( int i = 0; i < 114; i++){
      int yearCounter = 1900 + i;
      String yearCounterStr = str(yearCounter);
      rect(25 + i * xSpacer, height - 130, 10, -db.getData(yearCounterStr, f.text));
      
   

  // line(xLine+25, height-ySpacer, xLine+25, ySpacer);
   if( f1.text.equals(yearCounterStr)){
     
  //  ellipse(xSpacer*(xSpacer*i), db.getData(f.text, yearCounterStr ), 1, 1);
     
     
   }
   
}

      

    

    }
  }
