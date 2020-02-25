import 'dart:math' as math;

class Vector2{
  
   num x;
   num y;
  
  Vector2([ this.x,  this.y]){
    x  ??= 0;
    y  ??= 0;
  }
  
  Vector2 operator *( value ) {
   
    return value.runtimeType == Vector2 ?
      Vector2( (x * value.x ), (y * value.y)  ) :
      Vector2((x * value), (y * value));      
    
  }

  Vector2 operator -(Vector2 value) {
    return Vector2(x - value.x, y - value.y  );
  }
  
   
  Vector2 operator +(Vector2 value) {
    return Vector2(x + value.x, y + value.y  );
  }
  
  num length() => math.sqrt( (x * x) + (y * y));
  
  num lengthSquared() => ( (x * x) + (y * y) );

  // change the internal value of the vector
  void normalize()  {
    var val =  1 / math.sqrt( (x * x) + (y * y) );
    x *= val;
    y *= val;
  }


  @override
  String toString() => 'Vector2($x, $y)';
}

