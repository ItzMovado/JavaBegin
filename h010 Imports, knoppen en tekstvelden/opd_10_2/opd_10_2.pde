import controlP5.*; 
 
ControlP5 cp; 

 Textfield TF1;
 Button Knop1;
 
void setup() { 
 
  size(500, 500); 
 
  cp = new ControlP5(this); 
 
 TF1 = cp.addTextfield("Textfield1").setText("hoi").setSize(200,50).setPosition(100,200).setCaptionLabel("Type naam hier");
 
 Knop1 = cp.addButton("Knop1").setCaptionLabel("Click");

} 
 
void draw() { 

} 
 

 void Knop1(){
   background(0,0,0);
text("Hoi mijn naam is " + TF1.getText(),100,100);
 }
