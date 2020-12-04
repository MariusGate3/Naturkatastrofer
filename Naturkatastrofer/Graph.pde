class Graph extends DataBroker {
  float rectWidth =   412;
  float xSpacer = rectWidth/114;
  float ySpacer = 200;

  void display(DataBroker db, inputField f, inputField f1) {

    fill(200);
    rect(25, 25, width-50, height - 150);


    for ( int i = 0; i < 114; i++) {
      int yearCounter = 2014 - i;
      String yearCounterStr = str(yearCounter);      
     



      if ( f1.text.equals(yearCounterStr)) {

        fill(140);

        ellipse(xSpacer*(xSpacer*i), db.getData(f.text, yearCounterStr ), 1, 1);
        println("ellipse(xSpacer*(xSpacer*i), db.getData(f.text, yearCounterStr ), 1, 1)");
      }
    }
  }
}
