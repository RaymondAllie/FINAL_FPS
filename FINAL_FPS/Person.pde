public class Person extends Obj {
  int health;
  boolean enemy;
  public Person(int x, int y, int z, int xAng, int yAng, int zAng, int[] mag, int health, boolean enemy) {
    super(x, y, z, xAng, yAng, zAng, mag, 2);
    this.health = health;
    this.enemy = enemy;
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
    return new Pixel[][]{};
  }
}
