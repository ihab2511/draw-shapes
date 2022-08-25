import 'package:app_shape2/base_shape.dart';

/// line class use for drow horizontal --- and vertical ||| lines
class Line extends BaseShape {
  Line({required int height, required int width})
      : super(height: height, width: width) {
    if (height != 1 && width != 1) {
      throw Exception("must height or width equal 1");
    }
  }

  /// drow horizontal and vertical line it depends in heigh and width
  /// if heigh equal 1 it mean that is horizontal line
  /// else if width  equal 1 it mean that is vetical line
  @override
  void drawShape() {
    if (height == 1) {
      for (var i = 0; i < width; i++) {
        points.add(Point(x: 0, y: 2 * i));
      }
      return;
    }

    for (var i = 0; i < height; i++) {
      points.add(Point(x: i, y: 0));
    }
  }

  ///point allways same postion in this class
  @override
  double getyFromX(int x) {
    return x.toDouble();
  }
}
