size(500,500);
background(255,255,255);

int sizeC = 100;

for(int i = 0; i < 10; i++){
  ellipse(450 - sizeC/2 ,450 - sizeC/2, sizeC,sizeC);
  sizeC-=10;
}
