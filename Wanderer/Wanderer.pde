float x,y,vx,vy,ax,ay;
float sz=50;

void setup(){
  size(displayWidth,displayHeight);
  background(255);
  x=width/2;
  y=height/2;
}
void draw(){
  colorMode(HSB,360,100,100,100);
  fill(frameCount%360,100,100,80);
  noStroke();
  ax=random(-.1,.1);
  ay=random(-.1,.1);
  vx=vx+ax;
  vy=vy+ay;
  x=x+vx;
  y=y+vy;
  ellipse(x,y,sz,sz);
if(x>width){x=0;}
if(x<0){x=width;}
if(y>height){y=0;}
if(y<0){y=height;}}
