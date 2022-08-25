import 'package:app_shape2/base_shape.dart';

///abstarct Base Shape  of all shapes like ovel,recongle..
///is is similar  BaseShape
abstract class Shape extends BaseShape {
  Shape({
    required int width,
    required int height,
  }) : super(height: height, width: width);

  ///helf of width
  int get semiW => width ~/ 2;

  ///helf of height
  int get semiH => height ~/ 2;

  /// in shape class , get getyFromX() is not usefull for this version..
  @override
  double getyFromX(int x) {
    throw Exception("this function is not used in shape class");
  }
}
