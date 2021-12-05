PGraphics buffer;
PFont font;

void setup() {
  size(600, 600, P2D);
  frameRate(30);
  noiseDetail(2);
  background(0);
  font = createFont("../../FONTS/imagist.otf", 600);

  buffer = createGraphics(width, height);
  buffer.beginDraw();
  buffer.background(0);
  buffer.fill(255);
  buffer.textFont(font);
  buffer.textAlign(CENTER);
  buffer.textSize(70);
  buffer.text("We  are  all \nstill \n DREAMING", width / 2, height / 2 - 110);
  buffer.endDraw();
}

void draw() {
  //background(0);
  float displace = 160;
  float hdisplace = displace * 0.5;
  float noisescale = 0.01;
  float time = frameCount * 0.01;
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      float xnoise = noise(i * noisescale, j * noisescale, time);
      float ynoise = noise(i * noisescale, j * noisescale, 300 + time);
      int xnint = int(xnoise * displace - hdisplace);
      int ynint = int(ynoise * displace - hdisplace);

      color clast = get(i, j);
      color c = buffer.get(i + xnint, j + ynint);
      set(i, j, lerpColor(clast, c, 0.15));
    }
  }
  saveFrame("output/image####.png");
}
