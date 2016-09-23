PImage taylor;
PImage kanye;
int taylorY[] = new int [50];
int taylorX[] = new int [50];
int kanyeY[] = new int [50];
int kanyeX[] = new int [50];
int velX;
int velY = 0;
int screen = 0;
int a = 5;


void setup()
{
  fullScreen();
  background(0);
  taylor = loadImage("Taylor.png");
  kanye = loadImage("kanye.png");

  for (int i = 0; i<taylorY.length; i++)
  {
    taylorY[i] = i*50;
  }

  for (int i = 0; i<kanyeX.length; i++)
  {
    kanyeX[i] = width/1;
  }
}

void draw()
{
  background(0);
  for (int i=0; i < taylorY.length; i++)
  {
    velX = a;
    imageMode(CENTER);
    image(taylor, taylorX[i], taylorY[i], 50, 50);
    taylorX[i] = taylorX[i] + velX;
  }
  for (int i=0; i < kanyeY.length; i++)
  {
    velX = a;
    imageMode(CENTER);
    image(kanye, kanyeX[i], taylorY[i], 50, 50);
    kanyeX[i] = kanyeX[i] - velX;
  }

  for (int i = 0; i < taylorY.length; i++)
  {
    if (taylorX[i] == width/2)
    {
      a = int(random(-10,-20));
    }
  }

}