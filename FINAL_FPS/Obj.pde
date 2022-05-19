public class Obj {
  int[] cords;
  int[][] vector;
  int I;

  public Obj(int x, int y, int z, int xAng, int yAng, int zAng, int[] mag, int i) {
    cords = new int[]{x, y, z};
    vector = new int[][]{mag, {xAng, yAng, zAng}};
    L = 0;
    I = i;
  }
  int[][] getVector() {
    return vector;
  }
  int[] getCords() {
   return cords; 
  }
  
  int getI() {
   return I; 
  }
  
  int test(){
    return 4;
  }
  void changeCords(int[] c) {
    for (int i = 0; i < cords.length; i++) {
       cords[i] += c[i]; 
    }
  }
  void changeVector(int m, int[] v) {
    vector[0][0] += m;
    for (int i = 0; i < vector[1].length; i++) {
       vector[1][i] += v[i]; 
    }
  }
}
