color bg = #000000;
color fg = #f1f1f1;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;

void setup() {
  size(900, 1500);
  img1 = loadImage("1.png");
  img2 = loadImage("2.png");
  img3 = loadImage("3.png");
  img4 = loadImage("4.png");
  img5 = loadImage("5.png");
  img6 = loadImage("6.png");
  img7 = loadImage("7.png");
}

void draw() {
  background(bg);
  translate(width/2, height/2);
  noStroke();
  drawStuff(400);
  fill(fg);
  saveFrame("outputs/img###.png");
}

void drawStuff(float param) {
  PImage[] imgs = {img1,img2,img3,img4,img5,img6,img7};
  float amount = 35;
  float magnitude = param;
  
  for (int i = 0; i < amount; i++) {
    float wave1 = sin(radians(frameCount + i * 5)) * 400;
    float wave2 = cos(radians(frameCount + i * 7)) * 200;
    float wave3 = tan(radians(frameCount + i * 10)) * 100;
    int cardcount = i;
    while (cardcount > 6) {
      cardcount -=7;
    }
    PImage img = imgs[cardcount];
    //ellipse(wave1, wave3, 10, 10); // to figure where the points are
    fill(int(random(200,255)));
    rect(wave1, wave3, wave2, wave1);
    image(img, wave1, wave3, wave2, wave1);
    //line(wave2, wave3, wave1, wave2);
  }
}
