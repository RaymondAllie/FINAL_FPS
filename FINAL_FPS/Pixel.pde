public class Pixel {
   color COLOR;
   boolean BREACHABLE;
     int L;
   public Pixel(color c, boolean b) {
      this.COLOR = c;
      this.BREACHABLE = b;
      this.L = 0;
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
  
}
