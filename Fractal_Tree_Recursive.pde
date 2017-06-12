float angle=PI/4;
void setup()
{
  size(400,400);
}
void draw()
{
  background(51);
  stroke(255);
  translate(width/2,height);
  branch(100);
}
void branch(int len)
{
  line(0,0,  0,-len);
  translate(0,-len);
  if(len>4)
  {
    pushMatrix();
    rotate(angle);
    branch(2*len/3);
    popMatrix();
    rotate(-angle);
    branch(2*len/3);
  }
}