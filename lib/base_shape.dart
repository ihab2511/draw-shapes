import 'dart:io';

/// Point Class is base Class form drow a shape 2D

class Point {
  // x is a Vertical axis |, is should  be positive ..
  final int x;

  // y is a Horizontal axis |, is should be positive ..
  final int y;
  Point({
    required this.x,
    required this.y,
  });

  @override
  String toString() => 'Point(x: $x, y: $y)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Point && other.x == x && other.y == y;
  }

  @override
  int get hashCode => x.hashCode ^ y.hashCode;
}

///abstarct Base Shape  of all shapes like line,curve..
abstract class BaseShape {
  /// precision of drow shape is is bettwin 0.1~0.5
  /// more it is smaller ,more the drow of shapes is precision
  static double precision = 0.4;

  /// width of shape
  final int width;

  /// height of shape
  final int height;

  BaseShape({
    required this.width,
    required this.height,
  });

  ///list points of shape is stored in this list after call drawShape() function
  final List<Point> points = [];

  ///abstract function.. every shape has own draw method
  void drawShape();

  /// simple function to get max is point in axis x
  /// it usefull when print a shape
  int getMaxX() {
    int max = 0;
    for (var item in points) {
      if (item.x > max) {
        max = item.x;
      }
    }
    return max;
  }

  /// simple function to get max is point in axis y
  /// it usefull when print a shape
  int getMaxY() {
    int max = 0;
    for (var item in points) {
      if (item.y > max) {
        max = item.y;
      }
    }
    return max;
  }

  /// y(x)
  double getyFromX(int x);

  /// scal shape
  /// change the unit of axis x and y
  List<Point> pointsScal(int a) {
    return points.map((e) => Point(x: e.x * a, y: e.y * a)).toList();
  }

  /// change the position of shape
  /// if  a>0 shape move to bottom
  /// if b>0 shape move to right
  Iterable<Point> pointsTrasmite(int a, int b) {
    return points.map((e) => Point(x: e.x + a, y: e.y + b));
  }

  /// marge bettween pointsScal() and @pointsTrasmite function
  Iterable<Point> pointsTrandScal(int a, int b, int c, int d) {
    return points.map((e) => Point(x: e.x * a + b, y: e.y * c + d));
  }

  /// print shape in console or terminal
  void printShape() {
    /// list for every lines in console
    List<List<Point>> listPointLine = [];

    ///put point in every line
    ///point(x:0,y:15)
    ///is for line 0
    ///point(x:5,y:0)
    ///is for line 5
    for (var i = 0; i <= getMaxX(); i++) {
      listPointLine.add(points.where((element) => element.x == i).toList());
    }

    ///print shape if have point => print *
    /// else print space
    for (var j = 0; j < listPointLine.length; j++) {
      for (var i = 0; i <= getMaxY(); i++) {
        if (listPointLine[j].indexWhere((element) => element.y == i) == -1) {
          stdout.write(" ");
        } else {
          stdout.write("*");
        }
      }

      stdout.write("\n");
    }
  }
}
