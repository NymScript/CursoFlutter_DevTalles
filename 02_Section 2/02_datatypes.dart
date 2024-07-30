
main(){

  // ==================================== Números

  var a = 10; //Evitar usar var, cuando no sabemos que va a retornar
  int b = 20;
  double c = 20.0;

  //No conozco el valor de D, el cual puede ser un valor nulo
 int? d;
  /* El signo de interrogacion le estoy diciendo que int puede ser nulo
  puede seguir siendo un entero pero puede estar vacio 
  */

  int _a = 30;
  double $b = 30;

  print(a);
  print(b);
  print(c);
  print(d);
  print(_a + $b);

  // =================================== String

  String nombre = 'Tony';
  String nombre3 = "Tony";
  //Puede ser null

  print(nombre == nombre3); //true
// Las comillas son las mismas pero en ciertas ocasiones se usa diferente como aqui:

String apellido1 = '0\Connor'; //Indica que esa comilla es parte del String
String apellido2 = "O'Connor"; //Otra manera y ambos son validos


//String Multinea 
print("""
  
  $apellido1
  $apellido2
  
  """);

  // ==================================== Booleans

  bool isActive = true;
  //Aqui con el signo de admiracion revocamos (voteamos) su resultado, entonces si a principio era true pasara a ser false
  bool isNotACtive = !isActive;

  print(isActive);
  print(isNotACtive);

  /*
  print(isNotACtive!);

  Si lo pongo al final significa para Dart no hace recibir un valor nulo por si Dart no logra inferirlo de manera correcta

  */


  // ===================================== List

  List<String> villanos = ['Lex','Red Skull']; //Son base 0

  villanos[0] = 'Superman';
  villanos.add('Duende verde');
  villanos.add('Duende verde');
  villanos.add('Duende verde');

  print(villanos);

  /* La manera de eliminar todos los valores duplicados, es transformandolo en Set y de un Set a un listado */

  var villanosSet = villanos.toSet();
  print('Set duplicado = $villanosSet.toList'); //Removio los valores duplicados


  // ===================================== Sets

  Set<String> villanos2 = {'Lex','Red Skull'}; //Estas llaves indican que es un set
   villanos2.add('Duende verde');

  print(villanos2);

  //La diferencia de las listas y los sets es que los Sets no tienen duplicados


  // ======================================= Maps (Diccionarios / OBjetos literales, tiene diferentes nombres)
  //Llave, valor

  Map<String, dynamic> ironman = {
    'nombre': 'Tony Stark', 
    'poder': 'Inteligencia y el dinero',
    'nivel': 9000,
  };

  //Diferencia entre un SEY y un ((MAP son los pares de valores, los map tienen pares de valor(Llave valor)

  print(ironman['nivel']); //definimos con un string la llave que me interesa
  print(ironman['poder']);

  //Manera rapida de crear mapas
  Map<String, dynamic> capitan = new Map();

  //Defino un mapa y agrgeo los valores que quiera 
  capitan.addAll({
    'nombre':'Milan',
    'poder': 'Amazar pan',
    'nivel': 5000
  });

  print(capitan);


}