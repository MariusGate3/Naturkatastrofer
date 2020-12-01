class inputField {
  String text = "";
  String label;
  int xpos, ypos, w, h;
  boolean clicked;
  boolean Pressed;


  inputField(String label, int xpos, int ypos, int w, int h) {

    this.label = label;
    this.xpos = xpos;
    this.ypos =ypos;
    this.w = w;
    this.h = h;
  }


  boolean overField() {
    if (mouseX >= xpos && mouseX <= xpos+w && mouseY >= ypos && mouseY <= ypos + h) {

      return true;
    } else
      return false;
  }


  void fieldClicked() {
    if (mousePressed == true && Pressed == false) {
      Pressed = true;
      if (overField()) {

        clicked = true;
      }
    } else if (!overField()) {

      clicked = false;
      Pressed = false;
    }

    //  println(clicked);
  }

  boolean isClicked() {

    return clicked;
  }


  void display() {

    fill(255);
    text(label, xpos-100, ypos+30);
    rect(xpos, ypos, w, h);
    textSize(25);
    fill(0);
    text(text, xpos+15, ypos+35);
  }

  void type() {
    if (isClicked()) {

      if (key == BACKSPACE) {
        text = text.substring(0, text.length() - 1);
      } else if (key != CODED) 
        text += key;
    }
  }
}
