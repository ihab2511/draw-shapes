import 'dart:math' as math;

import 'package:app_shape2/shape.dart';
import 'package:app_shape2/shapes/base_shapes/curved_line.dart';

/// Ovel class use for draw ovel ()
class Ovel extends Shape {
  Ovel({required int width, required int height})
      : super(height: height, width: width);

  /// draw Ovel
  /// first draw two curveline (( [CurveLine]
  /// then will draw ovel  it after transmite one curve
  @override
  void drawShape() {
    CurveLine curveLine = CurveLine(height: height ~/ 2, width: width);
    curveLine.drawShape();
    points.addAll(curveLine.pointsTrandScal(1, 0, -1, width));
    points.addAll(curveLine.pointsTrasmite(
      0,
      width,
    ));
  }
}
