DataBroker db = new DataBroker();
inputField f = new inputField("country", 115, 900, 462, 50);
inputField f1 = new inputField("year", 115, 950, 462, 50);
Graph g = new Graph();


void setup() {

  background(102);

  size(462, 1000);

  db.loadData();
}


void draw() {


  f.display();
  f1.display();
  
  f.fieldClicked();
  f1.fieldClicked();
  
  g.display();

}

void keyReleased() {

  f.type();
  f1.type();
}
