void main() {
  
  //dynamic significa que la funcion main puede regresar cualquier cosa, intentar evitarlo
  
  //late final myName; no se le permite cambiar su valor, similar a una constante pero diferente
  
  String myName = 'Niyi';
  
  print('Hola $myName');
  //Interpolacion -> Inyectar 
  
  print('Hola ${myName.toUpperCase()}');
  //Interpolacion, las llaves son para que la expresion se pueda ejecutar correctamente
  print('Hola ${1 + 1}');
  
 
  
}
