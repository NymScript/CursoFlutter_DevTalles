// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
//impm + tap

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  //Va a mandar a llamar a la invocación de estado
  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Counter Functions',
         style: TextStyle(color: Color.fromARGB(255, 245, 242, 242)),
         ),

         //Función de refresh
        actions: [
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.refresh_rounded),
            onPressed: (){
              setState(() {
                clickCounter = 0;
              });
            }),
          ],

      ),
      body: Center(
        child: Column(
          //Espera un objeto MainAxis..
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: const TextStyle(
                fontSize: 160, fontWeight: FontWeight.w100),),
            
            Text('Click${ clickCounter == 1 ? '':'s' }', style: TextStyle(fontSize: 25))

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