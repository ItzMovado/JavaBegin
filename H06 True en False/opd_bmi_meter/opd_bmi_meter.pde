float gewicht =80;
float lengte =1.84;
float leeftijd =18;
float BMI =0;

BMI = gewicht / (lengte * lengte);
BMI *=10;
BMI = round(BMI);
BMI /=10;
println(BMI);


size(720, 500);
background(255, 255, 255);


rect(140, 200, 120, 30);
rect(300, 100, 120, 30);
rect(460, 200, 120, 30);

fill(0, 0, 0);
text("gewicht: " + gewicht + "KG", 145, 220);
text("lengte: " + lengte + "meter", 470, 220);
text("leeftijd" + leeftijd + " jaar", 305, 120);



  textSize(30);
  text("BMI:" + BMI, 310, 350);


if(leeftijd < 70){
 if(BMI < 18.5){
   fill(255,255,0);
   }else if(BMI < 25){
     fill(0,255,0);
    }else if(BMI < 30){
      fill(255,255,0);
    }else{
     fill(255,0,0);    
    }
  }else{
  if(BMI < 22){
  fill(255,255,0);
  }else if(BMI < 28){
  fill(0,255,0);
  }else if(BMI < 30){
  fill(255,255,0);
  }else{
    fill(255,0,0);
  }
  
  
  
  
  
  
  }
