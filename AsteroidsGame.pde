Spaceship space = new Spaceship ();
Star [] backg = new Star [500];
ArrayList <Asteroid> ne = new ArrayList <Asteroid> ();
Bullet bu = new Bullet ();

public void setup()  {
	size (500, 500);
	frameRate (255);
	for (int x = 0; x < backg.length; x ++) {
		backg[x] = new Star ();
	}
	for (int x = 0; x < 10; x++) {
		ne.add (x, new Asteroid ());
	}
	
}
public void draw() {
	background (0);
	for (int x = 0; x < backg.length; x ++) {
		backg [x].show ();
	}
	for (int x = 0; x < ne.size (); x ++) {
		ne.get (x).show ();
		ne.get (x).turn ((int)(Math.random () * 4 + 1));
		ne.get (x).move ();
	}
	space.show ();
	space.move ();
    space.info();
    if (mousePressed) {
    	bu.move();
    	bu.accelerate (0.01);
    }
    bu.show();
    bu.info();
    
}

public void keyPressed () {
	if (key == 'a') {
		space.turn (-15);
	}
	if (key == 'd') {
		space.turn (15);
	}
	if (key == 'w') {
		space.accelerate (0.15);
	}
	if (key == 's') {
		space.accelerate (-0.03);
	}
	if (key == 'h') {
        space.hyperspace ();
	}
}