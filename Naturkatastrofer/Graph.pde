class Graph extends DataBroker {
  float rectWidth =   412;
  float xSpacer = 462/144;
  float ySpacer = 1;

  void display(DataBroker db, inputField f, inputField f1) {

    fill(200);
    rect(25, 25, width-50, height - 150);


    for ( int i = 0; i < 114; i++) {
      int yearCounter = 2014 - i;
      String yearCounterStr = str(yearCounter);      
      
      fill(102);
      pushMatrix();
      translate(25, height-150);
      ellipse(xSpacer*i, (-db.getData(f.text, yearCounterStr ))/ySpacer, 4, 4);
      stroke(0);
      popMatrix();

      if ( f1.text.equals(yearCounterStr)) {
        pushMatrix();
        fill(255, 0, 0);
        ellipse(xSpacer+(xSpacer*i), (-db.getData(f.text, yearCounterStr ))/ySpacer, 4, 4);
        println(db.getData(f.text, yearCounterStr ));
        popMatrix();
      }
    }
  }
}
