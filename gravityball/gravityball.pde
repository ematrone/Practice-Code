int number=200;
float[] x=new float[number];
float[] y=new float[number];
float[] sz=new float[number];
float[] c=new float[number];
float[] v=new float[number];
float[] xv=new float[number];
float a=1;



void setup() {
  frameRate(30);
  size(displayWidth, displayHeight);


  for (int i=0; i<number; i++) {
    x[i]=random(width);
    y[i]=random(height);
    sz[i]=(random(20, 50));
    c[i]=random(360);
    v[i]=0;
    xv[i]=random(5,10);
  }}
  

void draw() {
  background(255);
  fill(0);
  for(int i=0; i<x.length; i++){
    fill(c[i],80,80,50);
  circle(x[i], y[i], sz[i]);
  x[i]=x[i]+xv[i];
  if (y[i]+sz[i]/2>=height) {
    v[i]=-v[i];
    y[i]=height-sz[i]/2;
  }
  if (x[i]>=width || x[i]<=0) {
    xv[i]=-xv[i];
  }
  v[i]=v[i]-a;
  y[i]=y[i]-v[i];}
}




void circle(float x, float y, float sz) {
  ellipse(x, y, sz, sz);
}

