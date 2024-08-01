void main() async { 

  print('Inicio del programa');

  try {
 
  } catch (err){
    print('Tenemos un error: $err');
  }

  final value = await httpGet ('https://nada.com/cursos');
    print( value );
    //Manejar error

  print('Fin del programa');

}

//Async va a obligar a que esta funcion regresa un future
Future<String> httpGet(String url) async {

  //await para que espere que el future se realice y cuando se realice va a hacer un return
    await Future.delayed( const Duration(seconds: 1));{

      throw 'Error en la petición';

    //return'Tenemos un valor de la petición';
  
    }
  }