void main() {

  //Tipos de variables
  
  //final es 
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  //Dart infiere el tipo de dato si no lo pongo yo
  //Lista de Strings ya que pueden tener varias habilidades
  final List<String>abilities = ['impostor'];
  final sprites = <String>['Nose1/front.png', 'Nose2/back.png'];
  
  
  
  print(pokemon);
  
  //Esto es ubn String multilinea, para no tener varios print
  
  print("""
  
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  
  """);
  
}
