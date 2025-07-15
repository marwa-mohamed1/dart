abstract class Shape {}

class Circle extends Shape {
  double radius = 0;
}

class Rectangle extends Shape {
  double width = 0;
  double height = 0;
}

double calculateArea(dynamic shape) {
  if (shape is Circle) {
    shape.radius = 5;
    return 3.14 * shape.radius * shape.radius;
  } else if (shape is Rectangle) {
    shape
      ..width = 4
      ..height = 6;
    return shape.width * shape.height;
  } else {
    return -1; // Unknown shape
  }
}

void main() {
  var c = Circle();
  var r = Rectangle();
  var unknown = "triangle";

  print("Circle Area: ${calculateArea(c)}");
  print("Rectangle Area: ${calculateArea(r)}");
  print("Unknown Area: ${(calculateArea(unknown) == -1) ? "Unknown shape" : calculateArea(unknown)}");
}
