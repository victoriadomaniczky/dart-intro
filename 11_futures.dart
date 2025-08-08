void main() {
  
  print('Inicio del programa');
  
  httpGet('https://dartpad.dev/?channel=stable').then(
    (value) {
      print( value );
    }).catchError( (err) {
    print('Error: $err');
  });
  
  print('Fin del programa');
  
}


Future<String> httpGet( String url ) {
  
  return Future.delayed( const Duration(seconds: 1), () {
    // return 'Respuesta de la petición HTTP';
    
    throw 'Error en la petición HTTP';
  });
  
}