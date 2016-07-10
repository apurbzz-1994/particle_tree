class ParticleSystem{
  ArrayList<Particle>plist;
  PVector origin;
  
  ParticleSystem(PVector l){
    plist = new ArrayList<Particle>();
    origin = l.get();
  }
  
  void addParticle(){
    plist.add(new Particle(origin));
  }
  
  void run(){
    for(int i=plist.size()-1;i>=0;i--){
      Particle p = plist.get(i);
      p.run();
      if(p.isDead()){
        plist.remove(i);
      }
    }
  }
}