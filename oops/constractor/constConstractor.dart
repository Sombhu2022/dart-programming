/*


4. Constant Constructor
Used when you want to create immutable objects. Objects created using this 
constructor are compile-time constants.

*/

class Point {
  final int x;
  final int y;

  // Constant Constructor
  const Point(this.x, this.y);
}

void main() {
  const point1 = Point(3, 4);
  const point2 = Point(3, 4);

  print(point1 ==
      point2); // Output: true (because they are compile-time constants)
}
