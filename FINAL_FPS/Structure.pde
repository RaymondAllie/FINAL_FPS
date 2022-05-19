public class Structure extends Obj {
  color surface;
  color outline;
  public Structure(int x, int y, int z, float xAng, float yAng, float zAng, float[] mag, color surf, color out) {
    super(x, y, z, xAng, yAng, zAng, mag, 4);
    this.surface = surf;
    this.outline = out;
  }
  color getSurface() {
    return surface;
  }
  color getOutline() {
    return outline; 
  }
  void render(Pixel[][][] map) {
     return; 
  }
}
