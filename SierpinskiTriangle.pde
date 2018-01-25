int limit = 10;
public void setup()
{
  size(500, 500);


}
public void draw()
{
  noStroke();
  fill(41, 76, 89);
  //Make triangle
  fill(224, 224, 224);
  //sierpinski();
}
public void mouseDragged()//optional
{
  limit = mouseY / 25;
}
public void sierpinski(int x, int y, int len)
{
  if (len >= limit){
    triangle(x+len/2, y, x+len/4, y-Math.sqrt(3)*(len/4), x+3*len/4, y-Math.sqrt(3)*(len/4));
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-Math.sqrt(3)*len/4, len/2);
  }
}
