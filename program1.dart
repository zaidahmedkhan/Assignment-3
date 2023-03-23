// Create a Vehicle class with brand, model and year properties,
// and a method called drive () that prints the message indicating that the
// vehicle is being driven. Then create a Car class that inherits from vehicle
// and has numDoors property. Override the drive () method in the Car class to
// print a message that includes the number of doors.

void main() {
  Car mycar = Car("Toyota", "LandCrusier", 2022, 4);
  mycar.drive();
}

class Vehicle {
  late String brand;
  late String model;
  late int year;

  Vehicle(this.brand, this.model, this.year);

  void drive() {
    print("$brand $model $year is being driven");
  }
}

class Car extends Vehicle {
  late int numDoors;

  Car(String brand, String model, int year, this.numDoors)
      : super(brand, model, year);

  void drive() {
    // override
    print(
        "$brand $model $year is being driven and total numbers of door is :$numDoors");
  }
}
