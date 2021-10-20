import 'dart:math';

//********************************************************************** */
abstract class Shape {
  getArea();
}

//********************************************************************** */
class Circle implements Shape {
  var radius;
  var pi = 3.14;

  Circle(Input_Radius) {
    this.radius = Input_Radius;
  }
  @override
  getArea() {
    var area = pi * pow(radius, 2);
    print("$area");
  }
}

//********************************************************************** */
mixin Fill {
  void filled() {
    print("It is a filled shape");
  }
}

//********************************************************************** */
class FilledCircle extends Circle with Fill {
  var Radius2;
  FilledCircle(InputRadius2) : super(InputRadius2) {
    this.Radius2 = InputRadius2;
  }

  void defineMe() {
    print("This is circle with area of :");
    getArea();
    filled();
  }
}

//********************************************************************** */
//********************************************************************** */
class Rectangle implements Shape {
  var Length;
  var width;

  Rectangle(Input_Length, Input_Width) {
    this.Length = Input_Length;
    this.width = Input_Width;
  }
  @override
  getArea() {
    var area = Length * width;
    print("$area");
  }
}

//********************************************************************** */
class Triangle implements Shape {
  var Base;
  var Height;

  Triangle(Input_Base, Input_Height) {
    this.Base = Input_Base;
    this.Height = Input_Height;
  }

  @override
  getArea() {
    var area = 0.5 * Base * Height;
    print("$area");
  }
}

//********************************************************************** */
void main() {
  Circle c = Circle(5);
  c.getArea();
  print('*****');
  Rectangle r = Rectangle(5, 4);
  r.getArea();
  print('*****');
  Triangle t = Triangle(5, 4);
  t.getArea();
  print('*****');
  FilledCircle fc = FilledCircle(5);
  fc.defineMe();
}
