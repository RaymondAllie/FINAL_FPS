public class RecPrism extends Structure {
   public RecPrism(int x, int y, int z, int xAng, int yAng, int zAng, int[] mag, color surf, color out) {
      super(x, y, z, xAng, yAng, zAng, mag, surf, out);
      
   }
   void render(Pixel[][][] map) {
     int[] cords = getCords();
     int[][] vector = getVector();
     color clr = getSurface();
     for (int i = 0; i < vector[0][0]; i++) {
       int xmap = (int) (cos(vector[1][0]) * i) + cords[0];
       int ymap = (int) (sin(vector[1][0]) * i) + cords[1];
       int x_map = (int) (cos(vector[1][0] + PI/2) * vector[0][1]) + cords[0];
       int y_map = (int) (sin(vector[1][0] + PI/2) * vector[0][1]) + cords[1];
       for (int j = 0; j < vector[0][2]; j++) {
         map[xmap][ymap][j + cords[2]] = new Pixel(clr, false);
         map[xmap + x_map][ymap + y_map][j + cords[2]] = new Pixel(clr, false);
       }
     }
     for (int i = 0; i < vector[0][1]; i++) {
       int xmap = (int) (cos(vector[1][0] + PI/2) * i) + cords[0];
       int ymap = (int) (sin(vector[1][0] + PI/2) * i) + cords[1];
       int x_map = (int) (cos(vector[1][0]) * vector[0][0]) + cords[0];
       int y_map = (int) (sin(vector[1][0]) * vector[0][0]) + cords[1];
       for (int j = 0; j < vector[0][2]; j++) {
         map[xmap][ymap][j + cords[2]] = new Pixel(clr, false);
         map[xmap + x_map][ymap + y_map][j + cords[2]] = new Pixel(clr, false);
       }
     }
   }
}
