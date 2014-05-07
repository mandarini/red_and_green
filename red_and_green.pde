//this is just for having some fun with colours and opacity
//left is redder, right is greener

PShape rectangle;

void setup() {  
  size(800, 600, P2D);
  background(200);
  rectangle = createShape(RECT,0,0,50,50);
  rectangle.setStroke(color(255));  
  rectangle.setStrokeWeight(4);
  rectangle.setFill(color(255, 150, 150, 100));
}

void draw() {
  if (mousePressed) {
  translate(mouseX, mouseY);
  rectangle.setFill(color(map(mouseX, 0, width, 0, 255), 100, 100, 100));
  shape(rectangle);
}
}
