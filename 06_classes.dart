void main() {
     // no es necesario final *Hero*
  final Hero wolverine = Hero( name: 'Logan', power: 'Regeneración' );
  
  print( wolverine ); // sin el override imprime "Instance of Hero"
  print( wolverine.name );
  print( wolverine.power );
  
}

class Hero {
  
  String name;
  String power; 
  
/*  Hero( String paramName, String paramPower ){
    /* this.name = paramName;
    this.power = paramPower;
    la palabra "this" es opcional */
    name = paramName;
    power = paramPower;
  } */
  
/*  Hero( String paramName, String paramPower )
    : name = paramName,
      power = paramPower; */
  
  // se puede usar sin llaves o con {} para que sean argumentos por nombre
  Hero({ 
    required this.name, 
    this.power = 'Sin poder'
    });
 
  @override
  String toString() {
    return '$name - $power';
  }
  
}
