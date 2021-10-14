float a = 0;

void setup()
{
  size(500, 500, P3D); // Sets up a 3D grid of size 500x500 for the sketch to be drawn on
  background(0);
}

void draw()
{
  frameRate(60); // Sets the number of frames displayed every second
  translate(width/2, height/2); // Sets the new 0,0 cordinates to the centre of the grid

  a= a + PI; // Angle of rotation
  rotate(radians(a+PI)); // Rotates the sphere around the centre
  fill(random(0, 255));

  scale(3.0, 1, 1); // Scales the spheres

  rotate(radians(-40));  // Rotates the sphere around itself
  scale(.5, 1, 1);
  sphere(100);
  sphere(50);
  
  if (keyPressed == true) { // If any key is pressed, reverses the direction of the spheres
   a = a - 2*PI; 
  }
}
