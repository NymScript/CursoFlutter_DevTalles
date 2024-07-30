void main() {
  
  //Funciones y Parametros
  print ( greetEveryone() );
  
  print('Suma: ${addTwoNumbers(10, 20) }');
 
}

//No tratar que Dart difiera todo por nostros

String greetEveryone() => 'Hello Milanesa!';

/*int addTwoNumbers (int a, int b) {
  return a + b;
}*/

//Aqui puedo encontrar el mismo resultado a el ejercicio comentariado anterior 

int addTwoNumbers (int a, int b) => a + b;

//En este caso 'b' es un enterop opcial
int addTwoNumbersOptional (int a, [int b = 0]) {
  
  //Forma de confirmar si el valor tiene un numero
  
  //b = b ??0;
  
  //b ??= 0;
  
  return a + b;
}