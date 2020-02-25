
import 'dart:html';

import 'vector.dart';


class Bush {
  Function _randomize;
  CanvasRenderingContext2D  context2D;

  int CANVAS_WIDTH;
  int CANVAS_HEIGHT;

  String color;

  Vector2 bushPosition; //  = Vector2(); // (x,y)
  Vector2 bushVelocity;//  = Vector2(); // (x,y) direction and velocity.
  
  int timeToGrow;
  int maxLength; // The maximum size of the bush, so it doesn't grow forever
  
  int hasOffspring; // Will the bush generate other bush?
  
  // ================================================== \\
  //               Constructor Deffinitions             \\
  // ================================================== \\
  //                                                    \\
  Bush(this._randomize, this.context2D) {
    
    CANVAS_WIDTH  = context2D.canvas.width;
    CANVAS_HEIGHT = context2D.canvas.height;

    color = color;
   
    bushPosition = Vector2(_randomize(1, CANVAS_WIDTH), CANVAS_HEIGHT );
    bushVelocity = Vector2(0,-5);
   
    timeToGrow = 1000;
   
    maxLength = _randomize(1, CANVAS_HEIGHT);
    hasOffspring = _randomize(0, 1);
  }

  draw(){
    context2D
      ..fillStyle = 'lightgray'
      ..fillRect(bushPosition.x, bushPosition.y - 1, 1, 1);    
  }

  move(){
    bushPosition += bushVelocity;
  }
}