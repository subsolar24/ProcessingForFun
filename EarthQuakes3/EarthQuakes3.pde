// Shape Example 
// Rob Christensen 
// This is a basic example I created to learn how to draw random shapes 

// Define constants 
int rangeX = 1280; 
int rangeY = 1200; 
int framesPerSecond = 10; 
float strokeColor = 0;
JSONObject eqjsonobj; 
JSONArray eqjsonarray; 

// Initialize 
void setup() {
  // set stage size, smooth out vectors, and set frame rate 
  size(1024, 768);
  smooth();
  frameRate(framesPerSecond);
  getEarthQuakeJSON();
  // noLoop(); 
} 

// draw random shapes 
void draw() {
 
}

// Create Random Lines 
boolean getEarthQuakeJSON() { 
  
  // get significant earthquakes in the past 30 days
  eqjsonobj = loadJSONObject("http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/significant_month.geojson"); 
  eqjsonarray = eqjsonobj.getJSONArray("features");  
  
  for (int i = 0; i < eqjsonarray.size(); ++i) 
  {
    println(eqjsonarray.getJSONObject(i).getJSONObject("properties").getString("title"));     
  }

  return true; 
}
 
 
 
