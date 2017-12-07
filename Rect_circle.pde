float circleX = 0;     
float circleY = 0;
float radius = 30;      
float rectX = 200;    
float rectY = 100;
float rectWidth = 200;    
float rectHeight = 200;


void setup() {
  size(600,400);
}


void draw() {
  background(255);

  circleX = mouseX;
  circleY = mouseY;

  boolean hit = circleRect(circleX,circleY,radius,rectX,rectY,rectWidth,rectHeight);
  if (hit) {
    fill(255,0,0);
  }
  else {
    fill(0,255,0);
  }
  rect(rectX,rectY, rectWidth, rectHeight);

  fill(0, 150);
  ellipse(rectX,rectY, radius*2,radius*2);
}


boolean circleRect(float _circleX, float _circleY, float _radius, float _rectX, float _rectY, float _rectWidth, float _rectHeight) {

  float testX = _circleX;
  float testY = _circleY;

  if (_circleX < _rectX)         testX = _rectX;      
  else if (_circleX > _rectX+_rectWidth) testX = _rectX+_rectWidth;   
  if (_circleY < _rectY)         testY = _rectY;     
  else if (_circleY > _rectY+_rectHeight) testY = _rectY+_rectHeight;  

  float distX = _circleX-testX;
  float distY = _circleY-testY;
  float distance = sqrt( (distX*distX) + (distY*distY) );


  if (distance <= _radius) {
    return true;
  }
  return false;
}