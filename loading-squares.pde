int x = 0;
int y = 0;
int side = 0;

class Square {
	float rot = 0;
	float cx = 200;
	float cy = 200;
	float sideLen = 300;
	float i = 0;
	
	void draw() {
		pushMatrix();
		
		translate(cx, cy);
		rotate(rot * PI / 180);

		stroke(255, 0, 0);
		line(sideLen / -2, sideLen / -2, sideLen /  2, sideLen / -2);
		stroke(0, 255, 0);
		line(sideLen /	2, sideLen / -2, sideLen /  2, sideLen /  2);
		stroke(0, 0, 255);
		line(sideLen /	2, sideLen /  2, sideLen / -2, sideLen /  2);
		stroke(255, 255, 0);
		line(sideLen / -2, sideLen /  2, sideLen / -2, sideLen / -2);
		
		stroke(255, 0, 0);
		line((sideLen / -2) + (i * sideLen), (sideLen / -2), (sideLen /  2), (sideLen / -2) + (i * sideLen));
		stroke(0, 255, 0);
		line((sideLen /  2), (sideLen / -2) + (i * sideLen), (sideLen /  2) + (-i * sideLen), (sideLen /  2));
		stroke(0, 0, 255);
		line((sideLen /  2) + (-i * sideLen), (sideLen /  2), (sideLen / -2), (sideLen /  2) + (-i * sideLen));
		stroke(255, 255, 0);
		line((sideLen / -2), (sideLen /  2) + (-i * sideLen), (sideLen / -2) + (i * sideLen), (sideLen / -2));
		
		popMatrix();
	}
}

Square base = new Square();
Square sub = new Square();

void setup() {
	background(0);
	stroke(255);
	size(400, 400);
	smooth();
	frameRate(30);
}

void draw() {
	clear();
	base.draw();
	base.i += 0.025;
	if (base.i >= 1) {
		base.i = 0;
	}
}
