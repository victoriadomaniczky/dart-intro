void main() {

/*  final ironman = Hero(
    isAlive: false,
    power: 'Money',
    name: 'Tony Stark'
  ); */
  
  
    final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };
  
/*  final ironman = Hero(
    isAlive: rawJson['isAlive'] ?? false, // si no existe isAlive, es false para que no devuelva null (??)
    power: 'Money',
    name: 'Tony Stark'
  ); */ // para no hacer todo esto, se crea Hero.fromJson()
  
  final ironman = Hero.fromJson( rawJson );
  
  print( ironman );
  
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  // Función o método que se llama igual que la clase: constructor
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson( Map<String, dynamic> json )
    : name = json['name'] ?? 'Name not found',
      power = json['power'] ?? 'Power not found',
      isAlive = json['isAlive'] ?? 'isAlive not found';
  
  @override
  String toString() {          // ternario
    return '$name, $power, ${ isAlive ? 'Alive :D' : 'Not alive D:' }';
  }
  
}