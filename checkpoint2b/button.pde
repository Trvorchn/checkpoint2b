class Button {

  int x, y, w, h;
  boolean clicked;
  color highlight, normal;
  String text;
  PImage img;

  Button( String t, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = t;
    highlight = high;
    normal = norm;
    clicked = false;
  }

  Button( PImage pic, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    highlight = high;
    normal = norm;
    clicked = false;
    img = pic;
  }
  void show() {

    drawButton();
    drawLabel();
  }
  boolean touchingMouse () {
    return mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 &&  mouseY < y+h/2;
  }
  void drawButton() {

    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    if (touchingMouse()) {
      fill(highlight);
    } else {
      fill(normal);
    }
    stroke (0);
    strokeWeight(4);
    rect(x, y, w, h, 30);

    if (mouseReleased && touchingMouse()) {
      clicked = true;
    } else {
      clicked = false;
    }
  }
  void drawLabel() {
    textAlign(CENTER, CENTER);
    if (touchingMouse()) {
      fill(normal);
    } else {
      fill(highlight);
    }
    if (img == null) {
      textSize(w/4);
      text(text, x, y);
    } else {
      image(img, x-160, y-140, w*0.8, h*0.8);
    }
  }
}
