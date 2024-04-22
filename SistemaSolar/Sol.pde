class Sol 
{
  float addx, addy, raiox;
  int numplanet;
  Bola[] planeta;
  
  Sol(float addx, float addy, float raiox, int numplanet) 
  {
    this.raiox = raiox;
    this.addx = addx;
    this.addy = addy;
    this.numplanet = numplanet;
    this.planeta = new Bola[numplanet];
  }
  
  void updated() 
  {
    fill(255, 255, 10);
    noStroke();
    ellipse(addx, addy, raiox, raiox);
  }
}
