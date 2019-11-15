class Star {
	private int starX, starY, rcol;
	public Star () {
		starX = (int)(Math.random () * 500);
		starY = (int)(Math.random () * 500);
		rcol = color ((int)(Math.random () * 255), (int)(Math.random () * 255), (int)(Math.random () * 255));
	}
	public void show () {
		stroke (rcol);
		fill (rcol);
		ellipse (starX, starY, 5, 5);
	}
}