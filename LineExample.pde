int num = 2000; 
int rangeX = 1024; 
int rangeY = 168; 

void setup() {
  size(1024, 768);
  smooth();
  frameRate(30);
} 

void draw(){
 
  for(int i = 0; i < 2; ++i) {
    float aX; 
    float bY; 
    
    aX = random(0,rangeX); 
    bY = random(0,rangeY); 
    
    aX = int(aX); 
    bY = int(bY); 

    line(aX, aX, 300, aX);      
 
    System.out.println("Run: " + i + ": aX: " + aX);

  }

  noLoop();
  
}



