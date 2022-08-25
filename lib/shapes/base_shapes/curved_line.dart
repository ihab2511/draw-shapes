import 'package:app_shape2/base_shape.dart';
import 'dart:math' as math;

/// line class use for drow Arch ((((()))))
class CurveLine extends BaseShape {
  CurveLine({required int height, required int width})
      : super(height: height, width: width);

  /// mathimatique formel to get position of point from x
  /// for mor detail url : https://en.wikipedia.org/wiki/Ellipse#Standard_equation
  @override
  double getyFromX(int x) {
    return math.sqrt(
        math.pow(width, 2) - math.pow(width, 2) * x * x / math.pow(height, 2));
  }

  /// draw diagonal shape
  /// it depands in [getyFromX] function
  /// make sure that is Integer (Z Group ) or round it
  @override
  void drawShape() {
    for (var i = -height; i <= height; i++) {
      var y = getyFromX(i.abs());

      ///check if can add point
      ///`1.6 is betwin 1 and 2  if we round it our precision decrease`
      if ((y - y.round()).abs() < BaseShape.precision) {
        Point point = Point(x: i + height, y: y.round());

        ///avoid repetition of point in same line
        bool isInclide =
            points.indexWhere((element) => element.x == i + height) != -1;
        if (!isInclide) {
          points.add(point);
        }
      }
    }
  }
}
