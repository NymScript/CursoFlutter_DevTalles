main(){

  //final y const son variables que no van a cambiar de su inicialización

  var a = 10;

  //final es mas lijera en memoria
  final b = 20;
  //Ocupa espacio memoria de que jamas va a cambiar
  const c = 30;

  late final double x;


  //Late te permite inicializarla después
   int z = 20;

/*  print("""
  
  $a
  $b
  $c

  """);

*/

  final List<String> personasFinal = ['Juan','Nito','Alimaña'];
  const List<String> personasConst = ['Juan','Nito','Alimaña'];

  personasFinal.add('Milan');
  print(personasFinal);


}