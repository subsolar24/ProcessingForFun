// Shape Example 
// Rob Christensen 
// This is a basic example I created to learn how to draw random circles 

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
  drawCircles(); 
}

boolean drawCircles() { 
  int x,y;  
  int w,h; 
  
  x = int(random(0,rangeX)); 
  y = int(random(0,rangeY)); 
  
  w = 100; 
  h = 100;  

  stroke(int(random(0,255)));   
  fill(int(random(0,255)));
  
  ellipse(x,y,w,h); 
   
  return true; 
}
