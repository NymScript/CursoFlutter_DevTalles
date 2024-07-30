//Clases abstractas

/* 
  Una clase abstracta se podria ver como un molde que me puede
  servir para hacer otros moldes.

  Una clase abstracta no se puede instanciar por si misma
 */
void main(){

    //final windPlant = EnergyPlant();
}

//Enumeracion donde pongos los tipos de manera cerrada
enum PlanType { nucear, wind, water}

abstract class EnergyPlant {


  double energyLeft;
  PlanType type; // nuclear wind, water

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });


  void consumeEnergy (double amount);

}

