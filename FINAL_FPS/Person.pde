public class Person extends Obj {
  int health;
  boolean enemy;
  float lookY;
  float lookZ;
  public Person(int x, int y, int z, int xAng, int yAng, int zAng, float[] mag, int health, boolean enemy, float lookY, float lookZ) {
    super(x, y, z, xAng, yAng, zAng, mag, 2);
    this.health = health;
    this.enemy = enemy;
    this.lookY = lookY;
    this.lookZ = lookZ;
  }
  void render(Pixel[][][] map) {
    return;
  }
  int getHealth() {
    return health;
  }
  void changeHealth(int num) {
    health += num;
  }
  Pixel[][] getView() {
    int[] cord = getCords();
    Pixel[][] screen = new Pixel[height][width];
    for (float angY = lookY - PI/6; angY < lookY + PI/6; angY += PI/3/height) {
      for (float angZ = lookZ - PI/6; angZ < lookZ + PI/6; angZ += PI/3/width) {
        for (int dis = 0; cord[0] + cos(angY) * dis < width && cord[0] + cos(angY) * dis > 0 && cord[1] + sin(angY) * dis < height && cord[1] + sin(angY) * dis > 0 && cord[2] + sin(angZ) * dis < zLength && cord[2] + sin(angZ) * dis > 0; dis++) {
          if (MAP[(int)(cord[0] + dis*cos(angY))][(int)(cord[1] + dis*sin(angY))][(int)(cord[2] + dis*sin(angZ))] != null){
            Pixel pixel = MAP[(int)(cord[0] + dis*cos(angY))][(int)(cord[1] + dis*sin(angY))][(int)(cord[2] + dis*sin(angZ))];
            ArrayList<int[]> toChange = scale(pixel, cord, angY, angZ);
            for (int[] place : toChange) {
              if (screen[place[0]][place[1]] == null) {
                 screen[place[0]][place[1]] =  pixel;  
              }
            }
        }
        }
      }
    }
    return screen;
  }
  ArrayList<int[]> scale(Pixel pixel, int[] view, float angY, float angZ) {
    ArrayList<int[]> toReturn = new ArrayList<int[]>();
    float x2 = (height/2)/tan(PI/6);
    
    int[] cords = pixel.getCords();
    for (int i = 0; i < cords.length; i++) {
     cords[i] -= view[i]; 
    }
    float y22 = cords[1] * x2 / cords[0];
    float y2 = (zLength/2)/tan(PI/6);
    float z22 = cords[2] * y2 / cords[1];
    toReturn.add(new int[]{(int) x2, (int) y22, (int) z22});
    return toReturn;
  }
}
