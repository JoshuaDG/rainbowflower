float r1 = 200;
float r2 = 200;
float m1 = 40;
float m2 = 40;
float a1 = PI/4;
float a2 = PI/8;
float a1_v = 0;
float a2_v = 0;
float a1_a = 0.01;
float a2_a = -0.001;


PGraphics canvas;

void setup(){
  size(1000,1000);
  canvas = createGraphics(1000,1000);
  canvas.beginDraw();
  canvas.background(0);
  canvas.endDraw();
}


void draw(){
  
  
  //background(255);
  image(canvas,0,0);
  stroke(0);
  strokeWeight(2);
  
  translate(500, 500);
  
  float x1 = r1 * sin(a1);
  float y1 = r1 * cos(a1);
  
  float x2 = x1 + r2 * sin(a2);
  float y2 = y1 + r2 * cos(a2);
  
  
  stroke(random(0, 255), random(0, 255), random(0, 255));
  line(0,0,x1,y1);
  fill(random(0, 255), random(0, 255), random(0, 255));
  ellipse(x1,y1,m1,m1);
  
  stroke(random(0, 255), random(0, 255), random(0, 255));
  line(x1,y1,x2,y2);
  fill(random(0, 255), random(0, 255), random(0, 255));
  ellipse(x2,y2,m2,m2);
  
  a1 += a1_v;
  a2 += a2_v;
  
  a1_v += a1_a;
  a2_v += a2_a;
  
  canvas.beginDraw();
  canvas.translate(500,500);
  canvas.strokeWeight(4);
  canvas.stroke(random(0, 255), random(0, 255), random(0, 255));
  canvas.point(x2,y2);
  canvas.endDraw();

}
