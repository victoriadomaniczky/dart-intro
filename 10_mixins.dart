abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin class Volador {
  void volar() => print('Puedo volar');
}

mixin class Caminante {
  void caminar() => print('Puedo caminar');
}

mixin class Nadador {
  void nadar() => print('Puedo nadar');
}


class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}
class Pato extends Ave with Volador, Caminante, Nadador {}
  
class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}



// Utilizando las clases
void main() {
  
  final flipperDolphin = Delfin();
  flipperDolphin.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  final lucas = Pato();
  lucas.caminar();
  lucas.volar();
  lucas.nadar();
  
}
