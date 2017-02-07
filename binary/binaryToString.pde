PFont f;
String palabra;
String result;

void setup(){
  size(displayWidth, displayHeight);
}

void draw(){
  background(0);
  f = createFont("Arial", 68);
  textFont(f);
  fill(255);

  palabra = "Camila";
  result = "";

  for( char letters : palabra.toCharArray() )
  {
    result = result + binary(letters, 8) + "\n";
  }

  text(result, displayWidth/2 - 150, displayHeight/5);
}
