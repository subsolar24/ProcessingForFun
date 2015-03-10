// Shape Example 
// Rob Christensen 
// This is a basic example I created to learn how to draw random shapes 

// Define constants 
int num = 2000; 
int rangeX = 1280; 
int rangeY = 1200; 
int framesPerSecond = 10; 
float strokeColor = 0;

// Initialize 
void setup() {
  // set stage size, smooth out vectors, and set frame rate 
  size(1024, 768);
  smooth();
  frameRate(framesPerSecond);
  // noLoop(); 
} 

// draw random shapes 
void draw() {
  createRandomShapes(); 
}

// Create Random Lines 
boolean createRandomShapes() { 
  int randomShape; 
  int x,x1,x2,x3; 
  int y,y1,y2,h3; 
  int w,h; 
  
  randomShape = int(random(0,5));
 
  switch(randomShape) {  
    case 0: 
      println("rectangle"); 
      drawRectangle();
      break; 
    case 1: 
      drawEllipse(); 
      println("ellipse"); 
      break; 
    case 2: 
      drawLine(); 
      println("line"); 
      break; 
    case 3: 
      drawTriangle(); 
      println("triangle"); 
      break; 
    case 4:
      drawPShape(); 
      println("PShape"); 
      break; 
    default: 
      println("unknown shape");
     break;  
  } 
     
  return true; 
}

boolean drawRectangle() {
  // define coordinates and dimensions 
  int x,y;  
  int w,h; 
  
  x = int(random(0,rangeX)); 
  y = int(random(0,rangeY)); 
  
  w = int(random(20,500)); 
  h = int(random(20,500)); 
  
  stroke(int(random(0,255)));   
  fill(int(random(0,255)));
  
  rect(x,y,w,h); 
  
  return true; 
}

boolean drawEllipse() { 
  int x,y;  
  int w,h; 
  
  x = int(random(0,rangeX)); 
  y = int(random(0,rangeY)); 
  
  w = int(random(20,500)); 
  h = int(random(20,500)); 

  stroke(int(random(0,255)));   
  fill(int(random(0,255)));
  
  ellipse(x,y,w,h); 
   
  return true; 
}

boolean drawLine() {
  int aX; 
  int bY; 
    
  aX = int(random(0,rangeX)); 
  bY = int(random(0,rangeY)); 

  stroke(int(random(0,255))); 
  fill(int(random(0,255)));

  line(aX, aX, 300, aX);      
 
  return true; 
}

boolean drawTriangle() {
  int x1,x2,x3; 
  int y1,y2,y3;  
  
  x1 = int(random(0,rangeX)); 
  x2 = int(random(0,rangeX)); 
  x3 = int(random(0,rangeX));  
 
  y1 = int(random(0,rangeY)); 
  y2 = int(random(0,rangeY)); 
  y3 = int(random(0,rangeY));  
  
  stroke(int(random(0,255))); 
  fill(int(random(0,255)));

  triangle(x1,y1,x2,y2,x3,y3);
  
  return true;  
}

boolean drawPShape() {
  int x1,x2,x3; 
  int y1,y2,y3; 

  x1 = int(random(0,rangeX)); 
  x2 = int(random(0,rangeX)); 
  x3 = int(random(0,rangeX));  
 
  y1 = int(random(0,rangeY)); 
  y2 = int(random(0,rangeY)); 
  y3 = int(random(0,rangeY));  
 
  stroke(int(random(0,255))); 
  fill(int(random(0,255)));
 
  beginShape(); 
  vertex(x1,y1); 
  vertex(x2,y2); 
  vertex(x3,y3); 
  endShape(); 
 
 return true;  
}
