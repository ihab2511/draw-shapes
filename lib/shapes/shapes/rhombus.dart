import 'dart:math' as math;

import 'package:app_shape2/shape.dart';
import 'package:app_shape2/shapes/base_shapes/diagonal_line.dart';

/// Rhombus class use for draw Rhombus Shape ◇

class RhombusShape extends Shape {
  RhombusShape({required int width, required int height})
      : super(height: height, width: width);

  /// drow Rhombus
  /// first draw forw Diagonal line //\\
  /// it will draw Rhombus after transmite the base shapes
  @override
  void drawShape() {
    DiagonalLine curvedLine = DiagonalLine(height: semiH, width: semiW);
    curvedLine.drawShape();
    points.addAll(curvedLine.pointsTrasmite(0, semiW));
    points.addAll(curvedLine.pointsTrandScal(-1, 2 * semiH, 1, semiW));
    points.addAll(curvedLine.pointsTrandScal(1, 0, -1, semiW));
    points.addAll(curvedLine.pointsTrandScal(-1, 2 * semiH, -1, semiW));
  }
}
