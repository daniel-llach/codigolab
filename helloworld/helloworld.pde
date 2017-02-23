void setup(){
  size(displayWidth, displayHeight);
  noLoop();
}

void draw(){
  background(0);
  PFont f;
  f = createFont("Arial", 68);
  textFont(f);
  fill(255);

  textAlign(CENTER, CENTER);
  text("Hola mundo!", displayWidth/2, displayHeight/2);

}
