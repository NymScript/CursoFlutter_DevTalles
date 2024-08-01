void main() async { 

  print('Inicio del programa');

  try {

    final value = await httpGet ('https://nada.com/cursos');
    print( 'Exito: $value' );
 
  } on Exception {
    print('Tenemos una Excepción');
  }
  
  catch (err){
    print('Ops! algo terrible paso: $err');

  } finally{
    print('FIN del try y catch');
  }

  print('fin del programa');
}

//Async va a obligar a que esta funcion regresa un future
Future<String> httpGet(String url) async {

  //await para que espere que el future se realice y cuando se realice va a hacer un return
    await Future.delayed( const Duration(seconds: 1));{

      throw Exception('No hay parametros en el URL');

    //return'Tenemos un valor de la petición';
  
    }
  }
