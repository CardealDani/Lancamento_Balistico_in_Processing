float tAtual=0;
float dAtual;
float vAtual=100;
float aAtual=-10;
float hAtual;

void setup() {
  size(600, 600);
  frameRate(10);
}
void draw() {
 background(255);
 //comente isso ^para ver o percurso da bolinha
  mostraMundo();
  dAtual=MRU(30,tAtual);
  hAtual=MRUV(vAtual , aAtual, tAtual);
  
  tAtual++;
  
  fill(0);
  circle(dAtual,600-hAtual, 10);
}
void mostraMundo() {
  for (int i=0; i<12; i++) {
    line(i*50, 0, i*50, 600);
    line(0, i*50, 600, i*50);
  }
}
float MRU (float v, float t) {
  float d = v*t;
  return (d);
}
float MRUV (float v, float a, float t) {
  float d= v*t+a*t*t/2.0;
  return d;
}
