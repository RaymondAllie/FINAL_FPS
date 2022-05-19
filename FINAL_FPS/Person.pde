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
  void getView() {
    int[] cord = getCords();
    //Pixel[][] screen = new Pixel[height][width];
    for (float angY = lookY - PI/6; angY < lookY + PI/6; angY += PI/3/height) {
      for (float angZ = lookZ - PI/6; angZ < lookZ + PI/6; angZ += PI/3/width) {
        for (int dis = 0; cord[0] + cos(angY) * dis < width && cord[0] + cos(angY) * dis > 0 && cord[1] + sin(angY) * dis < height && cord[1] + sin(angY) * dis > 0 && cord[2] + sin(angZ) * dis < zLength && cord[2] + sin(angZ) * dis > 0; dis++) {
          if (MAP[(int)(cord[0] + dis*cos(angY))][(int)(cord[1] + dis*sin(angY))][(int)(cord[2] + dis*sin(angZ))] != null){
            Pixel pixel = MAP[(int)(cord[0] + dis*cos(angY))][(int)(cord[1] + dis*sin(angY))][(int)(cord[2] + dis*sin(angZ))];
            set(5,5,pixel.getColor());
          }
        }
      }
    }
    //return screen;
  }
}
