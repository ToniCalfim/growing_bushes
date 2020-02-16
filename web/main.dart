import 'dart:html';

import 'src/helpers.dart';

//
// Creation Date: 2020 Fev, 10
// Last Modified: 2020 Fev, 10
//
//
//  Overview on Separation of Concerns for this project:
//
//    Implemented Layers:
//                        [ ] - Data  layer
//                        [ ] - Logic layer
//                        [ ] - Presentation layer
//                        [ ] - Input layer
//                        [ ] - Network layer
//

///
///  @file Growing Bushes...
///  @fileoverview Growind Bushes...
///  @supported Tested on Chrome 80.0.3987.87 so far
///  @version 1.0.0.0 standing for major.minor.revision.x
///
///  @author Erivan "Raven Codde" Cerqueira <soulidbrasil@gmail.com>
///  @author Toni Calfim <751127@gmail.com>
///
///  @see {@link JSDoc} for further information...
///  @see {@link http://bit.ly/38fOjwE|JSDoc}
///
///  @see {@link Edit hacks on VS Code} for further information...
///  @see {@link http://bit.ly/2Sf5AQj|Edit hacks on VS Code}
///
///  @todo Ellaborate on it
///  @license Use it as you will!
///

// ================================================== \\
//                The Core of the File                \\
// ================================================== \\
//                                                    \\
void main() => startApp();

List<Bush> listBushes = List.generate(10, (_) => Bush(getRandomNumber));

void startApp() {
  // Here you can include some kind of condition so the app can start
  run();
}

// ================================================== \\
//      All Canvas Deffinitions From Index.html       \\
// ================================================== \\
//                                                    \\
CanvasElement canvas = querySelector('canvas') as CanvasElement;
CanvasRenderingContext2D context2D = canvas.context2D;

// ================================================== \\
//       All Variables and Consts Definitions         \\
// ================================================== \\
//                                                    \\
double x = 30;
double y = 50;

final int CANVAS_WIDTH = context2D.canvas.width;
final double CANVAS_HEIGHT = context2D.canvas.height as double;

final int howManyBushesToCreate = 100;

// ================================================== \\
//  All Classes, Objects, and Functions Definitions   \\
// ================================================== \\
//                                                    \\
class Bush {
  String color;
  Function _randomize;

  Point bushPosition = Point(0, 0); // (x,y)
  Vector bushVelocity = Vector(0, 0); // (x,y) direction and velocity.

  int timeToGrow;

  // ================================================== \\
  //               Constructor Deffinitions             \\
  // ================================================== \\
  //                                                    \\
  Bush(this._randomize) {
    color = 'grey';
    bushPosition.x = _randomize(1, CANVAS_WIDTH);
    bushPosition.y = CANVAS_HEIGHT; // Canvas 400x400  15,400
    bushVelocity.y = 5;
    timeToGrow = 1000;
  }
}

void update() {
  //
  // There's no definition here yet...

  //
}

void draw() {
  var PI = 3.141592653589793;

  for (var bush in listBushes) {
    context2D
      ..beginPath()
      ..fillStyle = 'lightgreen'
      ..arc(bush.bushPosition.x, bush.bushPosition.y, 2, 0, 2 * PI)
      ..fill()
      ..closePath();
  }
}

run() async {
  await window.requestAnimationFrame(gameLoop);
}

void gameLoop(num timestamp) {
  context2D.clearRect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT); // Clear canvas

  update();

  draw();

  run();
}

// Point (200,200)  Vector (-2, -3)
// Point (198,197)

class Vector {
  double x, y;
  Vector(this.x, this.y);
}

class Point {
  double x, y;
  Point(this.x, this.y);
}
