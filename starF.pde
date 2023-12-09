class starF {
  PVector position;
  float freq;
  float size;
  color col;
  
  starF(float x, float y, float freq, float size, color col){
    position = new PVector (x, y);
    this.freq = freq;
    this.size = size;
    this.col = col;
  }
  
  starF(float x, float y, float size){
    position = new PVector (x, y);
    this.freq = 10;
    this. size = size;
    this.col = color(#F5BE4F);
  }
  
  // randomizes flashing stars across the screen
  starF(){
    float x = random (0, width);
    float y = random (0, height);
    position = new PVector (x, y);
    this.freq = random (1, 20);
    this.size = random(1, 5);
    this.col = color(#F5BE4F);
  }
  
  void display(){
    
  // see where the current frame is in a cycle
  float cycle = random(15,30);
  float current = frameCount % cycle;
  
  // if the current frame is within our desire frequency, show the star
  if (current < freq) {
    fill(col); 
  }
  // otherwise, hide it aka show the background color instead
  else {
    fill(0); 
  }   
    
    // display the star based on a given size
    noStroke();
    beginShape();
    vertex(position.x - (size/2), position.y + size);
    vertex(position.x - size, position.y);
    vertex(position.x - (size/2), position.y-size);
    vertex(position.x + (size/2), position.y-size);
    vertex(position.x + size, position.y);
    vertex(position.x + (size/2), position.y + size);
    endShape(CLOSE);
    
    }
  
  //void move(){}  
}
