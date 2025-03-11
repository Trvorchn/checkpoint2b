// color palette
color lime = #D1F2A5;
color red = #F56991;
color pink = #EED3D9;
color blue = #008DDA;
color turq = #97E7E1;
color gold = #FFC94A;
color yellow = #EFFAB4;
color tan = #D2B48C;
color green = #D1F2B9;


/// shades
color white = #FFFFFF;
color black = #000000;
color grey  = #B5C0D0;

boolean mouseReleased;
boolean wasPressed;
color bkg;


Button[] myButtons;
x =_x;
y =_y;
w = _w;
h =_h;
normal = norm;
highlight = high;
text = t;


void setup() {

  size (800, 800);
  rectMode(CENTER);
  bkg = white;

  myButtons = new Button[4];
  myButtons[0] = new Button ("BLUE", 200, 200, 200, 150, blue, pink);
  myButtons[1] =new Button ("GREEN", 200, 400, 200, 150, green, yellow);
  myButtons[2] = new Button ("PINK", 400, 650, 600, 200, pink, blue);
  myButtons[3] =new Button ("BLACK", 550, 300, 400, 350, black, white);
}
void draw() {

  click();
  background(bkg);
  int i = 0;
  while (i < 4) {
    myButtons[i].show();
    if (myButtons[i].clicked) {
      bkg = myButtons[i].normal;
    }
    i++;
  }
}
