main(){

  //final y const son variables que no van a cambiar de su inicialización

  var a = 10;

  //final es mas lijera en memoria
  final b = 20;
  //Ocupa espacio memoria de que jamas va a cambiar
  const c = 30;

  print("""
  
  $a
  $b
  $c

  """);

  final List<String> personasFinal = ['Juan','Nito','Alimaña'];
  const List<String> personasConst = ['Juan','Nito','Alimaña'];

  personasFinal.add('Milan');
  print(personasFinal);

  /* Cuando tengamos una lista que no va a ser modificada jamas podemos usar CONST

    Cuando tengamos una lista pero unicamente se quiere cambiar sus valores mediante los metodos
    de la lista, se puede usar FINAL
  
  */
  //personasConstadd('Milan');

  // personasFinal = []; No permitido cambiar de esta manera porque dice que apunte a un nuevo elemento, nuevo espacio memoria 
  print(personasConst);

}