Sol sun;

void setup() 
{
  size(1800, 1050);
  //fullScreen();
  frameRate(70);
  Planetize();
}

void draw() 
{
  background(40, 20, 10);
  PlaneAct();
  
}

void mouseClicked() 
{
  //serve pra mudar o "sistema solar"
  Planetize();
}

void Planetize() 
{  
  //inicia o sol
    sun = new Sol(
    /*add1*/       width/2,
    /*add2*/       height/2,
    /*raio*/       150,
    /*numplanet*/  4
    );
    
    //inicializa os planetas 
     for(int i = 0; i < sun.numplanet; i++) 
     {
       
      sun.planeta[i] = new Bola(
      /*add1*/        sun.addx, //random(100, width*80/200)),
      /*add2*/        sun.addy, //random(100, height*80/200)),
      /*raio*/        random(30, 90),                                                
      /*numlua*/      (int)random(6),                                                 
      /*cor*/         color(random(100, 255), random(100, 255), random(100, 255)),
      /*aceleration*/ random(0.007, 7)/frameRate,
      /*distancia*/   random(100, width*70/200)
      );
      
      for(int j = 0; j < sun.planeta[i].numlua; j++) 
      {
        
        sun.planeta[i].lua[j] = new Luas(
        /*raio*/             random(5, 15), 
        /*distancia*/        random(sun.planeta[i].raio/2, sun.planeta[i].raio/2+150), 
        /*velocity*/         0, 
        /*planetawidth*/     sun.planeta[i].add1 + sun.planeta[i].distancia_, 
        /*planetaheigth*/    sun.planeta[i].add2, 
        /*planetaacele*/     random(0.007, 7)/frameRate, 
        /*cor*/              color(random(100, 255), random(100, 255), random(100, 255))
       );
      }
    }
}

void PlaneAct() 
{
  //faz as luas girarem mas prentendo fazer os planeta girar tambem so que ai acho que vou ter diminuir as escalas tudo
  sun.updated();
  
  for(int i = 0; i < sun.numplanet; i++) 
  {
     sun.planeta[i].update();
     for(int j = 0; j < sun.planeta[i].numlua; j++) 
    {
      sun.planeta[i].lua[j].updat();
    }
  }
}
