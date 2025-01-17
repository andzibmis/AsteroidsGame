class Spaceship extends Floater  {
	public Spaceship () {
		corners = 4;
		xCorners = new int []{-8, 16, -8, -2};
		yCorners = new int []{-8, 0, 8, 0};
		myCenterX = myCenterY = 250;
        myDirectionX = 0;
        myDirectionY = 0;
        myPointDirection = 360;
        myColor = color (255, 255, 255);
	}
	public void accelerate (double dAmount) {  

        double dRadians = myPointDirection * (Math.PI / 180);
     
        myDirectionX += ((dAmount) * Math.cos (dRadians));
        myDirectionY += ((dAmount) * Math.sin (dRadians));
    }
    public void hyperspace () {
    	myCenterX = Math.random () * 350 + 75;
    	myCenterY = Math.random () * 350 + 75;
    	myPointDirection = Math.random () * 360;
    	myDirectionX = 0;
    	myDirectionY = 0;
    }
    public void info () {
    	fill (255);
    	text ("" + myCenterX, 10, 20);
    	text ("" + myCenterY, 10, 40);
    	text ("" + myPointDirection, 10, 60);
    }
    public double getmyCenterX () {
        return myCenterX;
    }
    public double getmyCenterY () {
        return myCenterY;
    }
    public double getmyPointDirection () {
        return myPointDirection;
    }
    public double getmyDirectionX () {
        return myDirectionX;
    }
    public double getmyDirectionY () {
        return myDirectionY;
    }
}
