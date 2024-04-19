// Interface for drawing functionality
abstract class Drawable {
  void draw();
}

// Base class for shapes
class Shape {
  final String name; // Use final for read-only property

  Shape(this.name);

  String getName() {
    return name;
  }
}

// Circle class inherits from Shape and implements Drawable
class Circle extends Shape implements Drawable {
  final double radius;

  Circle(String name, this.radius) : super(name); // Call parent constructor

  @override
  void draw() {
    print("Drawing a circle named $name with radius $radius");
  }
}

// Square class inherits from Shape and implements Drawable
class Square extends Shape implements Drawable {
  final double sideLength;

  Square(String name, this.sideLength) : super(name);

  @override
  void draw() {
    print("Drawing a square named $name with side length $sideLength");
  }
}

// Main program reads shapes from a simulated list
void main() {
  List<Drawable> shapes = readShapesFromFile();

  for (final shape in shapes) {
    shape.draw();
  }
}

// Simulated function to return shapes (replace with actual file reading)
List<Drawable> readShapesFromFile() {
  List<Drawable> shapes = [];
  shapes.add(Circle("Circle1", 5.0));
  shapes.add(Square("Square1", 10.0));
  return shapes;
}
