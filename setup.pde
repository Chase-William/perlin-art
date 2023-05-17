void keyPressed() {
  if (key == 's') {
     float num = random(255);
     saveFrame("C:\\Users\\Chase Roth\\Desktop\\perlin-art\\frame-" + num + ".png"); 
  }    
}

void setup() {
  size(2560, 1440);
  init(false);
}

void draw() {
  // draw_force_field();
  // Setup rending logic
  example1();
  // Invoke rendering logic to begin
  draw_and_update();
}
