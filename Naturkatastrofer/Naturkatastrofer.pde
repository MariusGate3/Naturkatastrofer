DataBroker db = new DataBroker();
inputField f1 = new inputField("Year", 115, 915, 462, 40);
inputField deaths = new inputField("Deaths", 115, 955, 462, 40);
inputField f = new inputField("Country", 115, 877, 462, 40);
Graph g = new Graph();


void setup() {
  

  size(462, 1000);

  db.loadData();
}


void draw() {
  clear();
  background(255);
  deaths.display();
  g.display(db, f, f1);

  f.display();
  f1.display();
  

  f.fieldClicked();
  f1.fieldClicked();
 
  
}

void keyReleased() {

  f.type();
  f1.type();
}
