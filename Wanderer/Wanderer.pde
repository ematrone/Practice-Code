PVector x;
PVector v;
PVector a;
float sz=50;

void setup(){
  size(displayWidth,displayHeight);
  background(255);
  x=new PVector(width/2,height/2);
  v=PVector.random2D();
  a=new PVector(.001,-.1);
}
void draw(){
  colorMode(HSB,360,100,100,100);
  fill(frameCount%360,100,100,80);
  noStroke();
  a.set(random(-.1,.1),random(-.1,.1));
  v.add(a);
  x.add(v);
  ellipse(x.x,x.y,sz,sz);
if(x.x>width){x.x=0;}
if(x.x<0){x.x=width;}
if(x.y>height){x.y=0;}
if(x.y<0){x.y=height;}}
