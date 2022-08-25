import 'dart:io';

import 'package:app_shape2/shapes/shapes/arrow.dart';
import 'package:app_shape2/shapes/shapes/ovel.dart';
import 'package:app_shape2/shapes/shapes/rectangle.dart';
import 'package:app_shape2/shapes/shapes/rhombus.dart';

void main(List<String> arguments) {
  //init global variable
  int height = 0;
  int width = 0;

  // get input from user
  // use terminal  is better then console
  do {
    stdout.write("heigh and width must be more then 1 \n");
    stdout.write(" heigh of shapes : ");
    height = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
    stdout.write(" width of shapes : ");
    width = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  } while (width < 1 || height < 1);

  //Create variable of Shapes ..

  Ovel ovelShape = Ovel(height: height, width: width);
  RhombusShape rhombusShape = RhombusShape(width: 2 * width, height: height);
  Rectangle rectangle = Rectangle(width: width, height: height);
  Arrow arrow = Arrow(width: width, height: height);

  //Drow Shapes .... it all add to  array type Point
  // check class  of  Point

  ovelShape.drawShape();
  rhombusShape.drawShape();
  rectangle.drawShape();
  arrow.drawShape();

  //print shapes
  //doon't forget .. use terminal  is better then console

  //Ovel O
  print("\n\n****** Ovel ******* \n\n");
  ovelShape.printShape();

  //Rhombus ◇
  print("\n\n******* Rhombus *******\n\n");
  rhombusShape.printShape();

  //Rectangle ⧰
  print("\n\n******* Rectangle *******\n\n");
  rectangle.printShape();

  //Arrow ->
  print("\n\n******* Arrow *******\n\n");
  arrow.printShape();
}
