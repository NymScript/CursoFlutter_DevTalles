/*
 Los streams pueden ser retrnados y usados como objetos, funciones o métodos
  son un flujo de información que puede estar emitiendo valores periodicamente,
  una unica vez, o nunca.

  Un ejemplo es una mangera, stream es como una manguera conectada a un tubo de agua,
  cuando abres el tubo el agua fluye, cada gota de agua seria una emision del Stream,
  la manguera puede nunca cerrase, cerrarse o nunca abrirse.

 */

import 'dart:async';

void main(){

  emitNumbers().listen((value){
    print('Stream value: $value');
  });

}

Stream<int> emitNumbers() {

  return Stream.periodic(const Duration(seconds: 1), (value){
    return value;
  }).take(10);

}
