class Branch{
  PVector begin;
  PVector end;
  boolean grown;
  
  Branch(PVector b, PVector e){
    begin = b.get();
    end = e.get();
    grown = false;
  }
  
  void show(){
    stroke(60);
    strokeWeight(5);
    line(begin.x, begin.y, end.x, end.y);
  }
  
  Branch makeLeftBranch(){
    PVector dir = PVector.sub(end,begin);
    dir.mult(0.67);
    dir.rotate(PI/4);
    PVector newEnd = PVector.add(end, dir);
    Branch left = new Branch(end, newEnd);
    return left;
  }
  
    Branch makeRightBranch(){
    PVector dir = PVector.sub(end,begin);
    dir.mult(0.67);
    dir.rotate(-PI/6);
    PVector newEnd = PVector.add(end, dir);
    Branch right = new Branch(end, newEnd);
    return right;
  }
}