// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
//impm + tap

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  //Va a mandar a lamar ala incovacion de estado
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 10;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Counter Screen', style: TextStyle(color: Color.fromARGB(255, 245, 242, 242)),),
      ),
      body: Center(
        child: Column(
          //Espera un objeto MainAxis..
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
               style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
            
            Text('Click${ clickCounter == 1 ? '':'s' }', style: TextStyle(fontSize: 25))

            /*
            Otra solución es usar if, pero ojo que no se puede usar if, else

            if( clickCounter == 1)
            const Text('Click', style: TextStyle (fontSize: 25)),

            if( clickCounter != 1)
            const Test('Clicks', style: TextStyle(fontSize: 25)),

             */

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //setState renderiza 
          setState(() {
            //clickCounter = clickCounter +1;
            clickCounter ++;   

          });
        
        },
        backgroundColor: Colors.blue,
        child:const Icon(Icons.plus_one_outlined, color: Colors.white,),
  
      ),
    );
  }
}