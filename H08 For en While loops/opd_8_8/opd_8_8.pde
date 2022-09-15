int antwoord = 0;
int getalEen =  0;
int getalTwee = 1;


for(int i = 0; i < 10; i++){
  antwoord = getalEen + getalTwee;  
   println(antwoord);
   getalEen = getalTwee;
   getalTwee = antwoord;
}
