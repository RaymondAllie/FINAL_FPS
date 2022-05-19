public class Person extends Obj {
  int health;
  boolean enemy;
  float look;
  public Person(int x, int y, int z, int xAng, int yAng, int zAng, float[] mag, int health, boolean enemy, float look) {
    super(x, y, z, xAng, yAng, zAng, mag, 2);
    this.health = health;
    this.enemy = enemy;
    this.look = look;
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
    for (float angY = look - PI/6; angY < look + PI/6; angY += .1) {
      for (float angZ = look - PI/6; angZ < look + PI/6; angZ += .1) {
        for (int dis = 0; cord[0] + cos(angY) * dis < width && cord[1] + sin(angY) * dis < height && cord; 
    }  
    }  
  }
}
