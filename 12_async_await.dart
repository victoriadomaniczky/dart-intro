void main() async {
  
  print('Inicio del programa');
      
  /* httpGet('https://dartpad.dev/?channel=stable').then(
    (value) {
      print( value );
    }).catchError( (err) {
    print('Error: $err');
  }); */
  // en lugar del código de arriba:
  try {
    
    final value = await httpGet('https://dartpad.dev/?channel=stable');
    print( value );
    
  } catch (err) {
    print('Hubo un error: $err');
  }
  
  // el await hace que el programa esperer que se ejecute el comando de arriba para continuar
  print('Fin del programa');
  
}


Future<String> httpGet( String url ) async {

/* return Future.delayed( const Duration(seconds: 1), () {
  // return 'Respuesta de la petición HTTP';

  throw 'Error en la petición HTTP';
  }); */
  // en lugar del código de arriba:
  // await trata un Future como si fuera un código síncrono y secuencial
  await Future.delayed( const Duration(seconds: 1));
  
  throw 'Error en la petición';
  
  // return 'Tenemos un valor de la petición';
  
}