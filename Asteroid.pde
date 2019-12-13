class Asteroid extends Floater {
	private int rot, speed;
	public Asteroid () {
		corners = 6;
		xCorners = new int []{-11, -5, -11, 4, 13, 6};
		yCorners = new int []{-8, 0, 8, 4, 0, -10};
		myCenterX = (int) (Math.random () * 450);
		myCenterY = (int) (Math.random () * 450);
		myColor = color (100, 100, 100);
		myPointDirection = (int) (Math.random () * 360);
		myDirectionX = 0;
		myDirectionY = 0;
		rot = (int)(Math.random ()* 6 - 3);
		speed = (int)(Math.random () * 2 + 1);
	}
	public void move () {
		turn (rot);
		super.move ();
		myCenterX = myCenterX - speed;
		myCenterY = myCenterY - speed;
	}
	public double gMyCenterX () {
		return myCenterX;
	}
	public double gMyCenterY () {
		return myCenterY;
	}
	public void removeS () {
		ne.remove (1);
	}
}