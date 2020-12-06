class Graph extends DataBroker {
  float rectWidth =   412.0;
  float xSpacer = rectWidth/114.0;
  float ySpacer = 2250;
  float zoomFactor = 1;
  float viewFactorX = 1;
  float viewFactorY = 1;

  void display(DataBroker db, inputField f, inputField f1) {

    fill(0);
    stroke(0);
    rect(25, 25, width-50, height - 150);

    // Deaths tekst
    text("A\nn\nt\na\nl\n\nd\nø\nd\ne", 5, 45);

    // X-akse tekst

    //  textSize(7);
    // textLeading(8);
    // text("2\n0\n1\n4",5,870);
    //  text("1\n9\n9\n0",445,870);


    for ( int i = 0; i < 114; i++) {
      int yearCounter = 2014 - i;
      String yearCounterStr = str(yearCounter);    

      float rectX = ((xSpacer*i)*zoomFactor)+viewFactorX;
      float rectY = 1+viewFactorY;

      // if (rectY <= 1.1) {
      noStroke();
      // println(rectX);
      fill(255);
      pushMatrix();
      translate(25, height-127);
      // ellipse(xSpacer+(xSpacer*i), (-db.getData(f.text, yearCounterStr ))/ySpacer, 4, 4);



      rect(rectX, rectY, 1*zoomFactor, ((-db.getData(f.text, yearCounterStr ))/ySpacer)*zoomFactor);

      stroke(0);
      String yearText = yearCounterStr.charAt(0) + "\n" + yearCounterStr.charAt(1) + "\n" + yearCounterStr.charAt(2) + "\n" + yearCounterStr.charAt(3); 
      textSize(1*zoomFactor);
      stroke(0);
      fill(0, 206, 209);
      text(yearText, rectX+5, (-7*zoomFactor));
      popMatrix();




      //println(yearCounterStr.charAt(0) + "",445,870);
      if ( f1.text.equals(yearCounterStr)) {
        noStroke();
        fill(255, 69, 0);
        pushMatrix();
        translate(25, height-127);
        // ellipse(xSpacer+(xSpacer*i), (-db.getData(f.text, yearCounterStr ))/ySpacer, 10, 10);

        rect(rectX, rectY, 1*zoomFactor, ((-db.getData(f.text, yearCounterStr ))/ySpacer)*zoomFactor);
        popMatrix();
      //  text(db.getData(f.text, yearCounterStr ), xSpacer+(xSpacer*i), (-db.getData(f.text, yearCounterStr ))/ySpacer);
        println(db.getData(f.text, yearCounterStr )+"");
        stroke(0);
        textSize(25);
        fill(255);
        text(db.getData(f.text, yearCounterStr ) + "", 120, 985);
        
      }

      // Jeg ville gerne finde det maks antal døde for valgte land så jeg kan indstille zoomfactoren ud fra det men jeg kan ikke regne ud hvordan det skal gøres.

      //   IntList currentDeaths = new IntList();

      //   currentDeaths.append(db.getData(f.text, yearCounterStr));
      // println(currentDeaths);

      // int maxDeaths = currentDeaths.max();
      //  println(currentDeaths.max());
    }
    // }


    // Linjer som beskriver hvor mange døde

    for (int i = 0; i< 200; i++) {
      pushMatrix();
      translate(25, height-127);
      strokeWeight(0.1);
      stroke(70);
      line((0.1*zoomFactor), ((-i*10)*zoomFactor)+viewFactorY, 412*zoomFactor, ((-i*10)*zoomFactor)+viewFactorY);

      // Antal døde blive divideret med 2250 (ySpacer), og der er 10 pixels imellem hver linje. Dermed er der 2250*10 for hver linje
      fill(0, 206, 209);
      textSize(6+zoomFactor);
      text(22500*i + "", 2, ((-i*10)*zoomFactor)+viewFactorY);
      popMatrix();
      strokeWeight(1);
      stroke(0);
      textSize(25);
      // fill(230);
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
