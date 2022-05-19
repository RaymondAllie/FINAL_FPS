public class Pixel {
   color COLOR;
   boolean BREACHABLE;
     int L;
   int[] cords;
   public Pixel(color c, int[] cords, boolean b) {
      this.COLOR = c;
      this.BREACHABLE = b;
      this.L = 0;
      this.cords = cords;
   }
   int getL() {
   return L; 
  }
  void setL(int num) {
     L =  num;
  }
  int changeL(int num) {
   L += num;
   return num;
  }
  color getColor(){
    return COLOR;
  }
  int[] getCords() {
   return cords; 
  }
}
