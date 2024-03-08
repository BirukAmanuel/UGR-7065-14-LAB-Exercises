class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  Rectangle rectangle = Rectangle(4, 11);

  print("Rectangle:");
  print("Width: ${rectangle.width}");
  print("Height: ${rectangle.height}");
  print("Area: ${rectangle.calculateArea()}");
  print("Perimeter: ${rectangle.calculatePerimeter()}");
}