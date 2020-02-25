import 'dart:math' as math;

final math.Random _rnd = math.Random();
int getRandomNumber(int min, int max) => min + _rnd.nextInt(max - min);

// Point(200,200) when applied Vector(-2, -3) will be now Point(198,197)
class Point {
  double x, y;
  Point(this.x, this.y);
}

// Vector defines the direction and velocity each bush will grow
class Vector {
  double x, y;
  Vector(this.x, this.y);
}