

import 'package:day_10_flutter/day_10_objects.dart';


class Esukhei {
  Esukhei({required int age}) {
    this.age = age;
  }
  String name = "Esukhei";
  int age = 18;

  void sayMyName() {
    print('My name is ${this.name}');
  }
}

class Temuujin extends Esukhei {
  Temuujin({required super.age});
  @override
  void sayMyName() {
    String name = "Temuujin";
    print('My name is ${name}');
  }
}

class Khasar extends Esukhei {
  Khasar({required super.age});
  @override
  void sayMyName() {
    String name = "Khasar";
    print('My name is $name');
  }
}

class Temuuge extends Esukhei {
  Temuuge({required super.age});
  @override
  void sayMyName(){
    String name="Temuuge";
    print(name);
  }

}
class Khashuun extends Esukhei{
  Khashuun ({required super.age});
  @override
  void sayMyName(){
    String name='Khashuun';
    print(name);
  }
}
class Pig extends Animal {
  Pig ({required super.name , required super.type});
  @override
  void makeNoise(){
    print('pig roarrr');
  }
}
class Cat extends Animal{
  Cat ({ required super.name, required super.type});
  @override
  void makeNoise(){
    print('cat roarrr');
  }
}
class Horse extends Animal{
  Horse ({ required super.name, required super.type});
  @override
  void makeNoise() {
    print('Horse roarrr');
  }
}

void main() {
  final Esukhei esukhei = Esukhei(age: 25);
  esukhei.sayMyName();
  print(esukhei.age);
  final Temuujin temuujin = Temuujin(age: 18);
  temuujin.sayMyName();
  print(temuujin.age);
  final Khasar khasar=Khasar(age: 16);
  khasar.sayMyName();
  final Khashuun khashuun=Khashuun(age: 14);
  khashuun.sayMyName();
  final Temuuge temuuge=Temuuge(age: 10);
  temuuge.sayMyName();
  print(temuuge.age);
  final Horse horse=Horse(name: 'Horse', type: 'Mori');
  horse.makeNoise();
  final Pig pig=Pig(name: 'Pig', type: 'big');
  pig.makeNoise();
  final Cat cat =Cat(name: 'Cat', type: 'muur');
  cat.makeNoise();
}
