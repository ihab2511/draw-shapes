import 'package:app_shape2/shape.dart';
import 'package:app_shape2/shapes/base_shapes/diagonal_line.dart';
import 'package:app_shape2/shapes/base_shapes/line.dart';

/// Arrow class use for drow arrow -> <-
class Arrow extends Shape {
  Arrow({required int width, required int height})
      : super(height: height, width: width);

  /// drow Arrow
  /// first drow two Diagonal line /\
  /// and drow Horizontal and vertical lines
  /// it will draw it after transmite the base shape
  @override
  void drawShape() {
    DiagonalLine diagonalLine1 =
        DiagonalLine(height: (height ~/ 2), width: (width ~/ 2));
    diagonalLine1.drawShape();
    Line lineH = Line(height: 1, width: (width ~/ 2));
    Line lineV = Line(height: (height ~/ 2), width: 1);
    lineH.drawShape();
    lineV.drawShape();
    points.addAll(diagonalLine1.pointsTrasmite(0, (width ~/ 2)));
    points.addAll(diagonalLine1.pointsTrandScal(1, 0, -1, (width ~/ 2)));
    points.addAll(lineH.pointsTrasmite((height ~/ 2), 0));
    points.addAll(lineV.pointsTrasmite((height ~/ 2), (width ~/ 2)));
  }
}
