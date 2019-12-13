class Bullet extends Floater {
    private int size;
	public Bullet () {
		size = 5;
		myCenterX = space.getmyCenterX();
		myCenterY = space.getmyCenterY();
		myPointDirection = space.getmyPointDirection();
		myDirectionX = space.getmyDirectionX();
		myDirectionY = space.getmyDirectionY();
	}
	public void show () {
		fill (255);
		ellipse ((int)myCenterX , (int)myCenterY, size, size);
	}
	public void info () {
		fill (255);
		myPointDirection = space.getmyPointDirection();
		text (" " + myPointDirection, 140, 50);
	}
	public double getMyCenterX () {
		return myCenterX;
	}
    public double getMyCenterY () {
    	return myCenterY;
    }
}