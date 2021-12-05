void setup(){
  size(600,600);
}

void draw(){
  background(#111111);
  fill(#f1f1f1);
  stroke(200);
  drawLineA(300, 70, 30, 40, 3, 10);

}

void drawLineA(int startX, int startY, int wid, int count, int incrementX, int incrementY) {
  int x1 = startX;
  int y1 = startY;
  int x2 = startX;
  int y2 = startY;
  
  for (int i = 0; i < count; i++) {
    line(x1-wid, y1, x1+wid, y1);
    x1 += incrementX;
    y1 += incrementY;
  }
  for (int i = 0; i < count; i++) {
    line(x2-wid, y2, x2+wid, y2);
    x2 -= incrementX;
    y2 += incrementY;
  }
  println(wid);
  int x3 = startX;
  int y3 = startY+incrementY*(count/2);
  // middle section
  for (int i = 0; i < count/8; i++) {
    line(x3-wid+10, y3, x3+wid-10, y3);
    y3 += incrementY;
    wid += incrementX;
  }
  

}
