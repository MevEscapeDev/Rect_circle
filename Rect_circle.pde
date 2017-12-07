float cx = 0;     
float cy = 0;
float r = 30;      
float sx = 200;    
float sy = 100;
float sw = 200;    
float sh = 200;


void setup() {
  size(600,400);
}


void draw() {
  background(255);

  cx = mouseX;
  cy = mouseY;

  boolean hit = circleRect(cx,cy,r, sx,sy,sw,sh);
  if (hit) {
    fill(255,0,0);
  }
  else {
    fill(0,255,0);
  }
  rect(sx,sy, sw,sh);

  fill(0, 150);
  ellipse(cx,cy, r*2,r*2);
}


boolean circleRect(float cx, float cy, float radius, float rx, float ry, float rw, float rh) {

  float testX = cx;
  float testY = cy;

  if (cx < rx)         testX = rx;      
  else if (cx > rx+rw) testX = rx+rw;   
  if (cy < ry)         testY = ry;     
  else if (cy > ry+rh) testY = ry+rh;  

  float distX = cx-testX;
  float distY = cy-testY;
  float distance = sqrt( (distX*distX) + (distY*distY) );


  if (distance <= radius) {
    return true;
  }
  return false;
}