void example1() {
  // Prevent clearing the canvas
  // background(0);
  
  pset_begin_layer();
  // Modify first param to adjust number of spawn nodes
  // Modify second to adjust lifespan
  // Modify third to adjust foreground color, see scaffold.pde comment to adjust background color
  pset_add(new ParticleSet(100000, 600, color(255)) {
    public void step(Particle p) {
	  // Adjust contents here to change renderings
      //noFill();
      strokeWeight(2);
      //stroke(random(0), 0, 0, 10);
      stroke(p.pcolor, 10);
      strokeCap(ROUND);
      // line(p.prev_x, p.prev_y, p.x, p.y);
      line(p.origin_x, p.origin_y, p.x, p.y);
      // bezier(p.origin_x, p.origin_y, p.x, p.y, mouseX, mouseY, mouseX, mouseY);
      // arc(p.origin_x, p.origin_y, p.x, p.y, 0.785398, 0.785398);
    }
  });
  pset_end_layer();
}
