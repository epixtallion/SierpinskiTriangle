int limit = 10;
public void setup()
{
  size(500, 500);
  background(255, 212, 102);
}
public void draw()
{
  //Clear canvas
  fill(255, 212, 102);
  rect(0, 0, 500, 500);

  pushMatrix();
  translate(250, 250);

  //Make triangle
  noStroke();
  fill(39, 67, 96);
  float triHeight = (float) Math.sqrt(3) * 200;
  triangle(0, triHeight/-2, 200, triHeight/2, -200, triHeight/2);


  fill(224, 224, 224);
  sierpinski(-200, triHeight/2, 200);

  popMatrix();
}
public void mouseMoved()//optional
{
  limit = Math.abs((mouseY-250) / 25);
  System.out.println(limit);
}
public void sierpinski(float x, float y, float len, int times)
{
  if (times == 0) return; else{
    times--;
    triangle(x+len/2, y, x+len/4, y-(float)Math.sqrt(3)*(len/4), x+3*len/4, y-(float)Math.sqrt(3)*(len/4));
    sierpinski(x, y, len/2, times);
    sierpinski(x+len/2, y, len/2, times);
    sierpinski(x+len/4, y-(float)Math.sqrt(3)*len/4, len/2, times);
  }
}
public void sierpinski(float x, float y, float len){ sierpinski(x, y, len, limit); }
