class Graph extends DataBroker {
  float rectWidth =   412.0;
  float xSpacer = rectWidth/114.0;
  float ySpacer = 2500;

  void display(DataBroker db, inputField f, inputField f1) {

    fill(200);
    rect(25, 25, width-50, height - 150);


    for ( int i = 0; i < 114; i++) {
      int yearCounter = 2014 - i;
      String yearCounterStr = str(yearCounter);      

      fill(102);
      pushMatrix();
      translate(25, height-135);
      // ellipse(xSpacer+(xSpacer*i), (-db.getData(f.text, yearCounterStr ))/ySpacer, 4, 4);

      rect(xSpacer+(xSpacer*i), 0, 1, (-db.getData(f.text, yearCounterStr ))/ySpacer);

      stroke(0);
      popMatrix();

      if ( f1.text.equals(yearCounterStr)) {
        fill(255, 0, 0);
        // ellipse(xSpacer+(xSpacer*i), (-db.getData(f.text, yearCounterStr ))/ySpacer, 10, 10);

        rect(xSpacer+(xSpacer*i), 0, 1, (-db.getData(f.text, yearCounterStr ))/ySpacer);

        text(db.getData(f.text, yearCounterStr ), xSpacer+(xSpacer*i), (-db.getData(f.text, yearCounterStr ))/ySpacer);
        println(db.getData(f.text, yearCounterStr ));
      }
    }
  }
}
