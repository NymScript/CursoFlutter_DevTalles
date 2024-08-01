
 //Tod estrictamente relacionado a los animales
abstract class Animal {}

//Al ponerle el extends todas sus propiedades van a ser trasladas aca
abstract class Mamifero extends Animal{}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}



mixin Volador {
  void volar() => print('Voy volando');
}

mixin Caminante {
  void caminar() => print('Camina camina');
}

mixin Nadador {
  void nada() => print('Nadando nadandino');
}

//Se implementan los mixins

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Volador, Caminante{}
class Pato extends Ave with Nadador, Caminante, Volador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

void main() {
  final flipper = Delfin();
  flipper.nada();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final donald = Pato();
  donald.nada();
  donald.caminar();
  donald.volar();

}
/*
Si la clase extiende de otra, hereda todas las propiedades de otra
Mixin dar cierta funcionalidad extra a las clases  (son un tipo de especializacion a nuestras clases)
Al ver la palabra with podemos asociarla a los mixin, with = mixin 

*/