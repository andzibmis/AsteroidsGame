Spaceship space = new Spaceship ();
Star [] backg = new Star [200];

public void setup()  {
	size (500, 500);
	frameRate (255);
	for (int x = 0; x < backg.length; x ++) {
		backg[x] = new Star ();
	}
}
public void draw() {
	background (0);
	for (int x = 0; x < backg.length; x ++) {
		backg [x].show ();
	}
	space.show ();
	space.move ();
	space.info ();
}

public void keyPressed () {
	if (key == 'a') {
		space.left ();
	}
	if (key == 'd') {
		space.right ();
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