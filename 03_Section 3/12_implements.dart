import 'dart:ffi';

void main(){

    final windPlant = WindPlant(initialEnergy: 100);
    final nuclearPlant = NuclearPlant(energyLeft: 1000); 

    print('wind: ${ chargePhone(windPlant) }');
    print('nuclear${ chargePhone(nuclearPlant)}');

}

double chargePhone (EnergyPlant plant) {
  if (plant.energyLeft < 10 ){
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;

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

// extends o implements

class WindPlant extends EnergyPlant {

    WindPlant ({ required double initialEnergy })
    :super(energyLeft: initialEnergy, type: PlanType.wind);

  @override
  void consumeEnergy  (double amount) {
    energyLeft -= amount;
  }

}

// ======================================================

class NuclearPlant implements EnergyPlant {

  @override
  double energyLeft;
  @override
  PlanType type = PlanType.nucear;

  NuclearPlant({ required this. energyLeft});

  @override
  void consumeEnergy  (double amount) {
    energyLeft -= (amount * 0.5);
  }
}

/* Funcionan para lo mismo, herencia, podemos utilizarla para cosas difentes, como implements
para un metodo en particular y extends mas general */
