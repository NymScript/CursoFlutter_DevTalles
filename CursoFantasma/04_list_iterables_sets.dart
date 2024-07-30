void main() {
  
  //Una variable 'final' solo se le puede asignar valor una vez
  
  
  final numbers = [1,2,2,3,4,5,6,8,9];

  print('List original $numbers');
  
  //Me dice cuantos valores hay en la lista
  print('List ${numbers.length}');
  
  //Me muestra el valor inicial
  print('Index 0 = ${numbers[0]}');
  
  //Otra forma de obtener el primer valor
  print('First= ${ numbers.first}');
  
  //Ordenado de manera inversa
  print('Reversed: ${ numbers.reversed}');
  
 //Iterable, una lista no es lo mismo que un     iterable 
  final reversedNumbers = numbers.reversed;
  print('Iterable = $reversedNumbers');
  
  //Esto permite recuperar el listado original al Iterable
  print('List ${reversedNumbers.toList()}');
  
  //Set donde cada valor es unico en la lista
  print('Set ${reversedNumbers.toSet()}');
  
  //Obtener los numeros mayor a 5
  
  final numbersGreaterThan5 = numbers.where( (int num) {
    return num > 5; //true
    
  });
  // Es un iterable
  print('> a 5 Iterable = $numbersGreaterThan5');
  //
  print('> a 5 Set = ${numbersGreaterThan5.toSet()}');
 
}
