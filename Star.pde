class Star {
	private int starX, starY, rcol, siz;
	public Star () {
		starX = (int)(Math.random () * 500);
		starY = (int)(Math.random () * 500);
		siz = (int)(Math.random () * 4 + 1);
		rcol = color ((int)(Math.random () * 255), (int)(Math.random () * 255), (int)(Math.random () * 255));
	}
	public void show () {
		stroke (rcol);
		fill (rcol);
		ellipse (starX, starY, siz, siz);
	}
}