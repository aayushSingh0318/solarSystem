class Moon {
  
  float moonDiameter = 70;
  float craterDiameter = 8;
  float craterRotation = 0;
  float rotationSpeed = 0.005;
  color moonColor = color(200, 220, 255);
  color craterColor = color(100, 120, 150);
  float x;
  float y;  
  
   Moon(float x, float y) {
   this.x = x;
   this.y = y;}

  
  void display() {
    translate(width / 2, height / 2); 
    //float radius = 200; // Radius from the center point
    
    // Calculate moon's position based on the radius and rotation angle
    //float moonX = cos(craterRotation) * radius;
    //float moonY = sin(craterRotation) * radius;
    
    fill(moonColor);
    noStroke();
    ellipse(x, y, moonDiameter, moonDiameter);
    
    pushMatrix();
    translate(x, y); // Translate to the moon's position
    rotate(craterRotation);
    fill(craterColor);
    ellipse(moonDiameter / 4, 0, craterDiameter, craterDiameter);
    popMatrix();
    
    craterRotation += rotationSpeed;
  }
}
