class button {

  int x, y, w, h;
  boolean clicked;
  color highlight, normal;
  String text;

  Button(String t, int_x, int_y, int_w, int_h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = t;
    highlight = high;
    normal = norm;
    clicked = false;
  }
  void show() {
    rectMode(CENTER);
if (mouseX > x -w/2 && mouseX < x+w/2 && mouseY > y-h/2 &&  
fill(highlight);
  }else {

  }
}
