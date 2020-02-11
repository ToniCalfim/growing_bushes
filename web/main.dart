import 'dart:html';

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

void startApp() {
  // Here you can include some kind of condition so the app can start
  bushesAnimate(0);
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
final int CANVAS_HEIGHT = context2D.canvas.height;

final int howManyBushesToCreate = 100;

// ================================================== \\
//  All Classes, Objects, and Functions Definitions   \\
// ================================================== \\
//                                                    \\
class BushesCreate {
  String color;

  int bornPositionX;
  int bornPositionY;

  double angleToGrow;
  double velocityToGrow;

  int timeToGrow;

  // ================================================== \\
  //               Constructor Deffinitions             \\
  // ================================================== \\
  //                                                    \\
  BushesCreate() {
    color = 'grey';
    bornPositionX = 15;
    bornPositionY = CANVAS_HEIGHT;
    angleToGrow = 45;
    velocityToGrow = 5;
    timeToGrow = 1000;
  }
}

void bushesUpdate() {
  //
  // There's no definition here yet...
  //
}

void bushesState() {
  var PI = 3.141592653589793;

  context2D
    ..beginPath()
    ..fillStyle = 'lightgreen'
    ..arc(x, y, 2, 0, 2 * PI)
    ..fill()
    ..closePath();
}

// about num highResTime: http://bit.ly/2uw4A2a
void bushesAnimate(num highResTime) {
  context2D.clearRect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT); // Clear canvas

  bushesUpdate();

  bushesState();

  window.requestAnimationFrame(bushesAnimate);
}
