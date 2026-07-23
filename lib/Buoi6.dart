class Employee{
  void salary(){
    print("Employee salary is \$5000");
  }
}
class Manager extends Employee{
  @override
  void salary(){
    print("Manager salary is \$10000");
  }
}
class Dev extends Employee{
  @override
  void salary(){
    print("Dev salary is \$7000");
  }
}

class Work {
  static int count = 0;
  Work(){
    count++;
  }
  void totalWork(){
    print("Total work: $count");
  }
}

enum Days {Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday}

enum CompanyType{
  soleProprietorship("Sole Proprietorship");

  final String text;
  const CompanyType(this.text);
}
abstract class Vehicle{
  void start();
  void stop();
}

class Car implements Vehicle{
  @override
  void start(){
    print("Car started");
  }

  @override
  void stop(){
    print("Car Stoped");
  }
}


abstract class Area {
  void area();
}
abstract class Perimeter{
  void perimeter();
}

class Rectangle implements Area, Perimeter{
  int length, breadth;
  Rectangle(this.length, this.breadth);
  @override
  void area(){
    print("Area of rectangle: ${length * breadth}");
  }
  @override
  void perimeter(){
    print("Perimeter of rectangle: ${2 * (length + breadth)}");
  }
}

mixin CanFly{
  void fly(){
    print("This object can fly");
  }
}
mixin CanWalk{
  void walk(){
    print("This object can walk");
  }
}

class Bird with CanFly, CanWalk{
}
class Human with CanWalk{

}
void  main(){
  // Manager manager = Manager();
  // Dev dev = Dev();
  Work work1 = new Work();
  Work work2 = new Work();
  Work work3 = new Work();

  // manager.salary();
  // dev.salary();
  work1.totalWork();
  work2.totalWork();
  work3.totalWork();

  for (Days day in Days.values){
    print(day);
  }

  CompanyType soleProprietorship = CompanyType.soleProprietorship;
  print(soleProprietorship.text);

  var car = Car();
  car.start();
  car.stop();

  Rectangle rectangle = Rectangle(10, 20);
  rectangle.area();
  rectangle.perimeter();

  var bird = Bird();
  bird.fly();
  bird.walk();
  var human = Human();
  human.walk();
}