public class Obj {
  int[] cords;
  float[][] vector;
  int I;
  
  public Obj(int x, int y, int z, float xAng, float yAng, float zAng, float[] mag, int i) {
    cords = new int[]{x, y, z};
    vector = new float[][]{mag, {xAng, yAng, zAng}};
    I = i;
  }
   float[][] getVector() {
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
  void changeVector(int m, float[] v) {
    vector[0][0] += m;
    for (int i = 0; i < vector[1].length; i++) {
       vector[1][i] += v[i]; 
    }
  }
}
