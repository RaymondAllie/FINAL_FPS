
Pixel[][][] map;
ArrayList<Person> Persons = new ArrayList<Person>();
ArrayList<Structure> Structures = new ArrayList<Structure>();

 void setup() {
   size(500, 300);
   Pixel[][] test = new Pixel[300][500];
   for (int i = 0; i < height; i++) {
     for (int j = 0; j < width; j++) {
       test[i][j] = new Pixel(color(44, 3, 39), false);
     }
   }
   //dis(test);
   
 }
 
 void draw() {
   for (Person p : Persons) {
    p.render(map);
   }
   for (Structure s : Structures) {
     s.render(map);
   }
   if (Persons.size() > 0) {
     screen(Persons.get(0).getView());
   }
 }
 
 
 void screen(Pixel[][] lis) {
   for (int i = 0; i < height; i++) {
     for (int j = 0; j < width; j++) {
       set(j, i, lis[i][j].COLOR);
     }
   }
 }
