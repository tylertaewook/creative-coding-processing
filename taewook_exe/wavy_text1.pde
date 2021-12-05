PGraphics pg;
PFont font;

void setup() {
  font = createFont("./ASSETS/RobotoMono-Regular.ttf", 600);
  size(1200, 300, P2D);
  pg = createGraphics(1200, 300, P2D);
  
}

void draw() {
  background(0);
  pg.beginDraw();
  pg.background(0);
  pg.fill(255);
  pg.textFont(font);
  pg.textSize(200);
  pg.pushMatrix();
  pg.translate(width/2, height/2-80);
  pg.textAlign(CENTER, CENTER);
  pg.text("taewook", 0, 0);
  pg.popMatrix();
  pg.endDraw();
  
  int tilesX = 20;
  int tilesY = 40;

  int tileW = int(width/tilesX);
  int tileH = int(height/tilesY);

  for (int y = 0; y < tilesY; y++) {
    for (int x = 0; x < tilesX; x++) {

      // WARP
      int wave = int(sin(frameCount * 0.05 + ( x * y ) * 0.07) * 10);
      // SOURCE
      int sx = x*tileW+wave;
      int sy = y*tileH+wave/2;
      int sw = tileW;
      int sh = tileH;


      // DESTINATION
      int dx = x*tileW;
      int dy = y*tileH;
      int dw = tileW;
      int dh = tileH;
      
      copy(pg, sx, sy, sw, sh, dx, dy, dw, dh);

    }
  }
  saveFrame("output/image####.png");
}
