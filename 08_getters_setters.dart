void main() {
  
  final mySquare = Square( side: 10 );
  
  // mySquare.side = 6;
  
  print( 'Área: ${ mySquare.area } m2' );
  
}

class Square {
  // con el "_" indicamos una propiedad privada: visible solo dentro de la clase
  double _side; // side * side
  
  Square({ required double side })
    // agg aserciones: verificar que una condición específica se cumpla
    : assert( side >= 0, 'Side must be greater than or equal to 0' ),
      _side = side;
  
  // getter
  double get area {
    return _side * _side;
  }
  
  set side( double value ) {
    print('Setting new value: $value');
     if ( value < 0 ) throw 'Value must be greater than or equal to 0';
    
    _side = value;
  }
  
  double calculateArea() {
    return _side * _side;
  }
  
}