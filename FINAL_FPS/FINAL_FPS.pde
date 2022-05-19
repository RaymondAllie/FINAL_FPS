
Pixel[][][] MAP;
int zLength;
ArrayList<Person> Persons = new ArrayList<Person>();
ArrayList<Structure> Structures = new ArrayList<Structure>();

void setup() {
  size(500, 300);
  zLength = 500;
  Structures.add(new RecPrism(100, 100, 0, PI/3, 0, 0, new float[]{50, 50, 50}, color(34, 20, 89), color(0)));
  MAP = new Pixel[width][height][zLength];
  Pixel[][] test = new Pixel[300][500];
  for (int i = 0; i < height; i++) {
    for (int j = 0; j < width; j++) {
      test[i][j] = new Pixel(color(44, 3, 39), false);
    }
  }
  //screen(test);
  Persons.add(new Person(0, 0, 0, 0, 0, 0, new float[]{0, 0, 0}, 0, false, 0.01, 0.1));
  println(roundNum(0.3));
  println(roundNum(0.5));
  println(roundNum(5.5));
  println(roundNum(4.56));
  println(roundNum(7.48));
}

void draw() {
  for (Person p : Persons) {
    p.render(MAP);
  }
  for (Structure s : Structures) {
    s.render(MAP);
  }
  if (Persons.size() > 0) {
    //screen(Persons.get(0).getView());
    Persons.get(0).getView();
  }
  //println("works?");
}


void screen(Pixel[][] lis) {
  for (int i = 0; i < height; i++) {
    for (int j = 0; j < width; j++) {
      set(j, i, lis[i][j].COLOR);
    }
  }
}

int roundNum(float x) {
  if (x % 1 >= 0.5) return (int)(x) + 1;
  return (int)(x);
}
