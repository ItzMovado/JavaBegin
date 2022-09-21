int a = 120;
int b = 120;
int c = 220;
int d = 220;

void setup(){
size(400, 400);
background(255,255,255);
}

void draw(){
line(a,b,a,d);
line(c,c,a,d);
line(c,b,c,c);
line(b,a,d,a);
}
