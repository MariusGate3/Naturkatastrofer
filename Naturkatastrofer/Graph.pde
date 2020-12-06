class Graph extends DataBroker {
  float rectWidth =   412.0;
  float xSpacer = rectWidth/114.0;
  float ySpacer = 100;
  float zoomFactor = 1;
  float viewFactorX = 1;
  float viewFactorY = 1;

  void display(DataBroker db, inputField f, inputField f1) {

    fill(0);
    stroke(0);
    rect(25, 25, width-50, height - 150);


    for ( int i = 0; i < 114; i++) {
      int yearCounter = 2014 - i;
      String yearCounterStr = str(yearCounter);    

      float rectX = ((xSpacer*i)*zoomFactor)+viewFactorX;
      float rectY = 1+viewFactorY;

      // if (rectY <= 1.1) {
      noStroke();
      println(rectX);
      fill(255);
      pushMatrix();
      translate(25, height-127);
      // ellipse(xSpacer+(xSpacer*i), (-db.getData(f.text, yearCounterStr ))/ySpacer, 4, 4);



      rect(rectX, rectY, 1*zoomFactor, ((-db.getData(f.text, yearCounterStr ))/ySpacer)*zoomFactor);

      stroke(0);
      popMatrix();

      if ( f1.text.equals(yearCounterStr)) {

        // ellipse(xSpacer+(xSpacer*i), (-db.getData(f.text, yearCounterStr ))/ySpacer, 10, 10);
        fill(255);
        //   rect(((xSpacer*i)*zoomFactor)+viewFactorX, 0.1+viewFactorY, 1*zoomFactor, ((-db.getData(f.text, yearCounterStr ))/ySpacer)*zoomFactor);

        text(db.getData(f.text, yearCounterStr ), xSpacer+(xSpacer*i), (-db.getData(f.text, yearCounterStr ))/ySpacer);
        println(db.getData(f.text, yearCounterStr ));
      }
    }
    // }


    // Linjer som beskriver hvor mange døde

    for (int i = 0; i< 86; i++) {
      pushMatrix();
      translate(25, height-127);
     strokeWeight(0.1);
     stroke(50);
      line(0, -i*10, 412, -i*10);


      popMatrix();
      strokeWeight(1);
      stroke(0);
    }




    // Zoom funktionalitet

    if (keyPressed) {
      if (key == '+' ) {
        zoomFactor++;
      }
    }

    if (keyPressed) {
      if (key == '-' && zoomFactor > 1) {
        zoomFactor--;
      }
    }

    // Kamera funktionalitet

    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == RIGHT) {
          println(viewFactorX);
          viewFactorX -= 10;
        }
      }
    }

    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == LEFT && viewFactorX < 1) {
          viewFactorX += 10;
        }
      }

      if (keyPressed) {
        if (key == CODED && viewFactorY > 1) {
          if (keyCode == DOWN) {
            println(viewFactorY);
            viewFactorY -= 10;
          }
        }
      }

      if (keyPressed) {
        if (key == CODED) {
          if (keyCode == UP) {
            viewFactorY += 10;
          }
        }
      }
    }
  }
}
