void setup(){
  size(300,300);
}

void draw(){
  background(255);
  drawRightC(100,5);

}

void drawRightC(int sizeC, int aantal){
  for(int i = 0; i < aantal; i++){
    ellipse(150 + sizeC/2,150,sizeC,sizeC);
    sizeC -= 20;
  }
}
