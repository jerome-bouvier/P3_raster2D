color FG = #111111;
color BG = #f1f1f1;
PImage img; 

void setup() {
  size(900, 900); 
  background(BG);
  img = loadImage("contact.jpg");
  img.resize(900, 0);
}

void draw() {
  background(BG);
  fill(FG);
  noStroke();
  float tilesX = map(mouseX, 0, width, 10, 100);
  float tileSize = width / tilesX;
  for (int y = 0; y < img.height; y += tileSize) {
    for (int x = 0; x < img.width; x += tileSize) {
      color c = img.get(x, y);
      float b = map(brightness(c), 0, 255, 1, 0);
      push();
      translate(x, y);
      ellipse(0, 0, b * tileSize, b * tileSize);
      pop();
    }
  }
}
