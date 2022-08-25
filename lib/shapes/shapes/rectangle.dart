import 'package:app_shape2/shape.dart';
import 'package:app_shape2/shapes/base_shapes/line.dart';

/// Rectangle class use for draw rectangle Shape
class Rectangle extends Shape {
  Rectangle({required int width, required int height})
      : super(height: height, width: width);

  /// drow Rectangle
  /// first draw two Horizontal line - -
  /// and drow two  vertical lines ||
  /// it will draw Rectangle after transmite the base shapes
  @override
  void drawShape() {
    Line lineHorizontal = Line(height: 1, width: width);
    lineHorizontal.drawShape();
    Line lineVertical = Line(height: height, width: 1);
    lineVertical.drawShape();
    points.addAll(lineHorizontal.points);
    points.addAll(lineVertical.points);
    points.addAll(lineHorizontal.pointsTrasmite(height - 1, 0));
    points.addAll(lineVertical.pointsTrasmite(0, 2 * (width - 1)));
  }
}
