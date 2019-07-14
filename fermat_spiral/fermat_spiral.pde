float step = 2*PI / 50.0;
float CON  = 100;

void setup(){
  size(1000, 1000);
}

void draw(){
  float rad = frameCount * step;
  float bpx = width /2.0 + sqrt(CON*frameCount)    *cos(rad);
  float bpy = height/2.0 + sqrt(CON*frameCount)    *sin(rad);
  float epx = width /2.0 + sqrt(CON*(frameCount+1))*cos(rad + step);
  float epy = height/2.0 + sqrt(CON*(frameCount+1))*sin(rad + step);
  line(bpx, bpy, epx, epy);
}

