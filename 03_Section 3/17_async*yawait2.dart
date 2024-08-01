//asyng * lo que significa es que va a devolver un string
import '10_classAstracEnum.dart';

void main(){

  emitNumber().listen((value){

    print('Stream value $value');

  });

}

Stream<int> emitNumber () async* {

  final valuesToEmit = [1,2,3,4,5];

  for(int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    //emisiones, sede este valor ahora, luego sede este otro valor, como return pero tenemos emisiones
    yield i;
  }

}