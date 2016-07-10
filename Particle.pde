class Particle{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float r,g,b;
  float rad;
  
  Particle(PVector l){
    location = l.get();
    velocity = new PVector(random(-1,1),random(-2,0));
    acceleration = new PVector(0,0.05);
    lifespan = 255.0;
    r = random(100,200);
    g = 200;
    b = random(120,130);
    rad = random(10,30);
  }
  
  
  void run(){
    update();
    display();
  }
  
  void display(){
    noStroke();
    fill(r,g,b,lifespan);
    ellipse(location.x, location.y, rad,rad);
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 2.0;
  }
  
  boolean isDead(){
    if(lifespan<0.0){
      return true;
    }
    else{
      return false;
    }
  }
}