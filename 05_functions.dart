void main() {
  
  print( greetEveryone() );
  print( greetPerson( name: 'Victoria', message: 'Hi' ) );

  
  print('Suma: ${ addTwoNumbers( 10, 20 ) }');
  print('Suma opcional: ${ addTwoNumbersOptional( 10 ) }');
  
}

/* String greetEveryone() {
  return 'Hello everyone!';
} */
// Func. flecha: después de la flecha debe venir inmediatamente lq queremos retornar
String greetEveryone() => 'Hello everyone!';


/* int addTwoNumbers( int a, int b ){
  return a + b;
} */
int addTwoNumbers( int a, int b ) => a + b;


/* int addTwoNumbersOptional( int a, [ int? b ] ){
  // b = b ?? 0;
  b ??= 0;
  
  return a + b;
} */
int addTwoNumbersOptional( int a, [ int b = 0 ] ){
  return a + b;
}


/* {} en los parámetros significa que son opcionales,
Se puede especificar el default del parámetro o si es requerido */
String greetPerson({ required String name, String message = 'Hola' }){
  return '$message, $name!';
}

