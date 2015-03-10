
// Define COnstants 
int num = 2000; 
int rangeX = 1280; 
int rangeY = 1200; 
int framesPerSecond = 60; 

float strokeColor = 0;

// Initialize 
void setup() {
  // set stage size, smooth out vectors, and set frame rate 
  size(1024, 768);
  smooth();
  frameRate(framesPerSecond);
} 

// Draw 
void draw(){
  createRandomLines(); 
}


// Create Random Lines 
boolean createRandomLines() 
{ 
  // define coordinates 
  float aX; 
  float aY; 
  float bX; 
  float bY; 
   
  // create random coordinates 
  aX = random(0,rangeX); 
  aY = random(0,rangeY); 
  bX = random(0,rangeX); 
  bY = random(0,rangeY); 
  
  // convert from float to int   
  aX = int(aX); 
  aY = int(aY); 
  bX = int(bX); 
  bY = int(bY); 
  
  // create a random stroke and convert to int 
  strokeColor = random(0,255);
  strokeColor = int(strokeColor); 

  stroke(strokeColor); 

  // draw a random line 
  line(aX, aY, bX, bY);      
  
  return true; 
}


  
