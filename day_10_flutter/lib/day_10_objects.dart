class Sprite {
  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;

  void makeSound() {
    print("Hello I'm Sprite");
  }
}

class NamedSprite {
  NamedSprite({required int x, required int y}) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;
  void printMyLocation() {
    print("My location is ${this.x} and ${this.y}");
  }
}

class Animal {
  Animal({required String name, required String type}) {
    this.name = name;
    this.type = type;
  }
  String name = "";
  String type = "";
  void makeNoise() {
    print("Animal Roaring");
  }
}

class Rahm {
  Rahm({required String name}) {
    this.name = name;
  }
  String name = "Rahm";
}

class Wheel {
  Wheel({required String name, required int numberOfWheels}) {
    this.name = name;
    this.numberOfWheels = numberOfWheels;
  }
  String name = "Wheel";
  int numberOfWheels = 1;
}

class Bycycle {
  Bycycle({required String name, required Rahm ram, required Wheel wheels}) {
    this.name = name;
    this.ram = ram;
    this.wheels = wheels;
  }
  String name = "Bicycle";
  Rahm ram = Rahm(name: 'Canon Dale');
  Wheel wheels = Wheel(name: 'Montana', numberOfWheels: 4);
}

class Door {
  Door({required int numberOfDoors}) {
    this.numberOfDoors = numberOfDoors;
  }
  int numberOfDoors = 0;
}

class Floor {
  Floor({required int numberOfFloors}) {
    this.numberOfFloors = numberOfFloors;
  }
  int numberOfFloors = 0;
}

class Building {
  Building({required String name, required Floor floors, required Door doors}) {
    this.name = name;
    this.doors = doors;
    this.floors = floors;
  }
  String name = " ";
  Floor floors = Floor(numberOfFloors: 1);
  Door doors = Door(numberOfDoors: 3);
}

void main() {
  final Sprite cat = Sprite(4, 5);
  print(cat);
  cat.makeSound();
  final NamedSprite dog = NamedSprite(x: 5, y: 6);
  print(dog);
  dog.printMyLocation();
  final Animal jackCat = Animal(name: 'Jack', type: 'cat');
  print(jackCat);
  jackCat.makeNoise();
  final Rahm ram = Rahm(name: 'Montana');
  final Wheel wheel = Wheel(name: 'Wheel', numberOfWheels: 2);
  final Bycycle bycycle = Bycycle(name: 'dugui', ram: ram, wheels: wheel);
  final Door door=Door(numberOfDoors: 2);
  final Floor floor=Floor(numberOfFloors: 3);
  final Building building = Building(name: 'Ajnai 101', floors:floor, doors: door);
  print(building.name);
  print(building.floors.numberOfFloors);
  print(building.doors.numberOfDoors);
}
