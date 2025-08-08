void main() async {
  
  print('Inicio del programa');
      
  try {
    
    final value = await httpGet('https://dartpad.dev/?channel=stable');
    print( 'Éxito: $value' );
    // + especifico:
  } on Exception catch(err) {
    print('Hubo un error: $err');
    
  } catch (err) {
    print('Ups! Algo salió mal: $err');
    
  } finally {
    print('Fin del try y catch');
  }
  
  // el await hace que el programa esperer que se ejecute el comando de arriba para continuar
  print('Fin del programa');
  
}


Future<String> httpGet( String url ) async {

  await Future.delayed( const Duration(seconds: 1));
  
  throw Exception('No hay parámetros en la URL');
  
  // throw 'Error en la petición';
  
  // return 'Tenemos un valor de la petición';
  
}