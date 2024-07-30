void main() {
  final mySquare = Square(side: -10);  // Creación de un objeto Square con lado de 10

  //mySquare.side = 5;  // Cambia el valor del lado a 5

  print('area: ${mySquare.area}');  // Calcula e imprime el área
}

class Square{

  //Propiedad privada es _ 
  double _side;  // Lado del cuadrado side * side

  Square({required double side})  // Constructor con parámetro obligatorio
    //Si la asersion no se cumple, las siguientes lineas tampoco se van a ejecutar
    : assert (side >= 0, 'side must be >=0'),
      _side = side;


  double get area {
    return _side * _side;


  }

  set side (double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0';

    _side = value;
  }

  // Método para calcular el área del cuadrado
  double calculateArea() {
    return _side * _side;
  }
}
