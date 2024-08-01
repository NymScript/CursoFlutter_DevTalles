/*
  Un future representa principalmente el resultado de una operacion asíncrona.
  Es una promesa de que pronto tendre un valor pero la promesa puede fallar y hay
  que manejar a exepción. Basicamente son un acuerdo d eque en el futuro tendras un valor
  para ser usado. 

 */

void main(){

  print('Inicio del programa');

  //Con el .then obtenemos el valor cuando el Future sea completado 
  httpGet('https://nada.com/cursos').then( (value){
    print( value );
    //Manejar error
  }).catchError((err){
    print('Error: $err');
  });

  pragma('Fin del programa');

}

Future<String> httpGet (String url){
    return Future.delayed( const Duration(seconds: 1),(){

      throw 'Error en la peticion http';
      //return 'Respuesta de peticion http';

    });
  }