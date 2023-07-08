class Sprite {
  Sprite(String name) {
    this.name = name;
  }
  String name = 'Sprite';
  int x = 0;
  int y = 0;
  bool isShow = true;
  int size = 100;
  int direction = 90;

  void move(int x) {
    this.x = x;
  }

  String say() {
    return this.name;
  }

  void changeYby(int y) {
    this.y = y;
  }

  void pointInDirection(int direction) {
    this.direction = direction;
  }
  void  setSize(int size){
    this.size=size;
  }
  String getDirection() {
    String side ='left';
    if (this.direction < 0 && this.direction > 90) {
      side = "south west";
    } else if (this.direction < 90 && this.direction > 180) {
      side= "north west";
    } else if (this.direction < -179 && this.direction > -90) {
      side= "north east";
    } else if (this.direction < -90 && this.direction > -1) {
      side= "south east";
    }
    else {
      side='west';
    }
    return side;

  }
}

void main() {
  final Luca = Sprite('Luca'); //constructor without parameter
  final Hat = Sprite('Hat');
  final Kia = Sprite('Kia');

  Luca.move(10);
  Luca.changeYby(30);
  Hat.changeYby(-40);
  Hat.move(-30);
  Kia.move(100);
  Kia.move(100);
  Kia.move(-200);
  Kia.changeYby(30);
  Kia.changeYby(-20);
  print(Luca.x);
  print(Luca.y);
  print(Hat.y);
  print(Hat.x);
  print(Luca.say());
  print(Kia.say());
  print(Hat.say());
  Luca.direction=-160;

  print(Luca.getDirection());

  Luca.setSize(50);
  print(Luca.size);
}
