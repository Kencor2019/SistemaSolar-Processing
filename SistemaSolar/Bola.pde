class Bola
{
    float raio, add1, add2, aceleration, veloc, distancia_; 
    int numlua;
    color cor;
    Luas[] lua;

  Bola(float add1, float add2, float raio, int numlua, color cor, float aceleration, float distancia) 
  {
      //inicializando as variaveis
      this.cor = cor;
      this.add1 = add1;
      this.add2 = add2;
      this.raio = raio;
      this.veloc = 0;
      this.distancia_ = distancia;
      this.aceleration = aceleration*30/this.raio;
      this.numlua = numlua;
      this.lua = new Luas[numlua];

  }

  void update() 
  {
    
    //desenha a orbita das luas
    noFill();
    stroke(150, 150, 150);
    ellipse(add1, add2, distancia_*2, distancia_*2);
    
    //desenha e gira as luas
    veloc += aceleration;
    fill(cor);
    noStroke();
    ellipse(add1+distancia_*cos(veloc), add2+distancia_*sin(veloc), raio, raio);
    
    for(int i = 0; i < numlua; i++) 
    {
      this.lua[i].chagepos(add1+distancia_*cos(veloc), add2+distancia_*sin(veloc));
    }
     //add1+distancia_*cos(veloc) vai ser igual ao add1 da lua
     //add2+distancia_*sin(veloc) vai ser igual ao add2 da lua 
  }
}
