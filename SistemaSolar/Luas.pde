class Luas 
{
  float _raio, _distancia, _velocity, _aceleracao,  _add1, _add2;
  color _cor; 

  Luas(float raio, float distancia, float velocity, float add1, float add2, float aceleracao, color cor) 
  {
    //inicializando as variaveis
    this._cor = cor;
    this._raio = raio;
    this._distancia = distancia;
    this._velocity = velocity;
    this._aceleracao = aceleracao;
    this._add1 = add1 ;
    this._add2 = add2;
  }
  
  void chagepos(float add1, float add2) 
  {
   _add1 = add1;
   _add2 = add2;
  }

  void updat() 
  {
    //desenha a orbita das luas
    noFill();
    stroke(150, 150, 150);
    ellipse(_add1, _add2, _distancia*2, _distancia*2);
    
    //desenha e gira as luas
    _velocity += _aceleracao;
    fill(_cor);
    noStroke();
    ellipse(_add1+_distancia*cos(_velocity), _add2+_distancia*sin(_velocity), _raio, _raio);
  }
}
