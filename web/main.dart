import 'dart:html';
import 'src/helpers.dart';
import 'src/bush.dart';

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

final int howManyBushesToCreate = 2;

//final int CANVAS_WIDTH = context2D.canvas.width;
//final double CANVAS_HEIGHT = context2D.canvas.height as double;

// ================================================== \\
//  All Classes, Objects, and Functions Definitions   \\
// ================================================== \\
//                                                    \\



List<Bush> listBushes =
    List.generate(howManyBushesToCreate, (_) => Bush(getRandomNumber, context2D));

void update() {
  //
  // There's no definition here yet...
  //
}

void draw() {
  context2D.clearRect(0, 0, 450, 500); // Clear canvas
  
  for (var bush in listBushes) {
    bush.draw();
  }
  
}

run() async {
  await window.requestAnimationFrame(gameLoop);
}

void gameLoop(num timestamp) {

  update();

  draw();

  run();
}
