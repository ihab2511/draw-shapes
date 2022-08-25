import 'package:app_shape2/base_shape.dart';

/// line class use for drow diagonal /////\\\\\ lines
class DiagonalLine extends BaseShape {
  DiagonalLine({required int height, required int width})
      : super(height: height, width: width);

  /// mathimatique formel to get position of point from x
  /// y=ax  => a =y/x  so y is width and  x is height
  /// x is on Vertical axis and  y is on Horizontal axis
  @override
  double getyFromX(int x) {
    return (width / height) * x;
  }

  /// draw diagonal shape
  /// it depands in [getyFromX] function
  /// make sure that is Integer (Z Group ) or round it
  @override
  void drawShape() {
    for (var i = 0; i <= height; i++) {
      var y = getyFromX(i);

      ///check if can add point
      ///`1.6 is betwin 1 and 2  if we round it our precision decrease`
      if ((y - y.round()).abs() < BaseShape.precision) {
        Point point = Point(x: i, y: y.round());

        ///avoid repetition of point in same line
        bool isInclide = points.indexWhere((element) => element.x == i) != -1;
        if (!isInclide) {
          points.add(point);
        }
      }
    }
  }
}
