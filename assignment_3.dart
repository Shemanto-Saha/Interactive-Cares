class Person {
  final String _name;
  final int _age;
  Person(this._name, this._age);
  String get name => _name;
  int get age => _age;
  String getInfo() {
    return "Name: $_name, Age: $_age";
  }
}

class Driver extends Person {
  String vehicle;
  Driver(super.name, super.age, this.vehicle);
  @override
  String getInfo() {
    return "Name: $name, Age: $age, Vehicle: $vehicle";
  }
}

abstract class Ride {
  double calculateFare(double distance);
}

class BikeRide implements Ride {
  @override
  double calculateFare(double distance) {
    return distance*5;
  }
}

void printFare(Ride ride, double distance) {
  double fare = ride.calculateFare(distance);
  print("Fare for $distance km: $fare");
}

void main() {
  Driver drive = Driver("Rahim", 25, "Bike");
  print(drive.getInfo());
  Ride ride = BikeRide();
  printFare(ride, 10);
}