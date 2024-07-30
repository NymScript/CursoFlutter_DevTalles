void main() {
  //95% en flutter son clases
  
  final Hero spiderman = Hero('Pitter','Tira telarañas');
  
  print(spiderman);
  print(spiderman.name);
  print(spiderman.power);
}

//Ver las clases como un molde para hacer galletas
class Hero {
  
  String name;
  String power;
  
  Hero(this.name, this.power);
  
//   Hero( String pName, String pPower )
//     : name = pName;
//       power = pPower; 
  
}
