ArrayList<Branch>tree;
ArrayList<ParticleSystem>ps;
int count = 0;

void setup(){
  size(800,600);
  frameRate(30);
  tree = new ArrayList<Branch>();
  ps = new ArrayList<ParticleSystem>();
  PVector b = new PVector(width/2, height);
  PVector e = new PVector(width/2, height-200);
  tree.add(new Branch(b,e));
  
}

void draw(){
  background(255);
  
  if(count<5){
    for(int i=tree.size()-1;i>=0;i--){
      Branch t = tree.get(i);
      if(!t.grown){
        tree.add(t.makeLeftBranch());
        tree.add(t.makeRightBranch());
        t.grown = true;
      }
     }
     count++;
  }
  
  //place particle objects on tree branches
   if(frameCount==30){
   for(int i=tree.size()-1;i>=0;i--){
      Branch t = tree.get(i);
      if(!t.grown){
        ParticleSystem m = new ParticleSystem(t.end);
        ps.add(m);
      }
     }
   }
  
  //display tree
  for(int i=tree.size()-1;i>=0;i--){
    Branch t = tree.get(i);
    t.show();
  }
  
  //display particles
  for(int i=ps.size()-1;i>=0;i--){
    ParticleSystem p = ps.get(i);
    p.addParticle();
    p.run();
  }
  
}