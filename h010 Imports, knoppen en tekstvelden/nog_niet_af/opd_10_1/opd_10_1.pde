import controlP5.*;

ControlP5 cp;
Button Knop1;
Button Knop2;

void setup() {

  size(500, 500);

  cp = new ControlP5(this);

  Knop1 = cp.addButton("Knop1")
    .setPosition(50, 50)
    .setSize(100, 50)
    .setCaptionLabel("do not click");


  Knop2 = cp.addButton("Knop2")
    .setPosition(250, 50)
    .setSize(100, 50)
    .setCaptionLabel("Click me");
}

void draw() {
  background(255,0,342);
}

void Knop1() {
  println("GOED");
}

void Knop2(){
  println("Fout");
}
