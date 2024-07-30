void main() {
  
  
  //Un objeto que va recibir una peticion web 
  final Map<String, dynamic> rawJson = {
    'name':'Tony Stark',
    'power':'Money',
    'isAlive': true
  };
  
  final ironman = Hero.fromJson(rawJson);

//   final ironman = Hero(
//     //Evaluar rapidamente si es nulo
//     isAlive: rawJson['isAlive2']?? false,
//     power: 'Money',
//     name: 'Tony Stark'
//   );
  
  print(ironman);
  
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  Hero ({
    //Se usa para marcar parámetros como obligatorios 
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  //Constructor
  Hero.fromJson(Map<String,dynamic> json)
      : name = json['name'] ?? 'NO name found',   
        power = json['power'] ?? 'NO power found',
        isAlive = json['isAlive'] ?? 'NO isAlive found';

@override
  
  String toString(){
    return '$name, $power, isAlive: ${isAlive ? 'Yes':'Noeñor'}';
  }

}


