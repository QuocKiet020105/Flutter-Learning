import 'dart:io';

//
// // void main(){
// //   // //open file
// //   //
// //   // File file = File('test.txt');
// //   // //delete file
// //   // if (file.existsSync()) {
// //   //   file.deleteSync();
// //   //   print('File deleted successfully');
// //   // } else {
// //   //   print('File not found');
// //   // }
// // }
//
// // class Rectangle{
// //   double? length;
// //   double? breaadth;
// //
// //   double area(){
// //     return length! * breaadth!;
// //   }
// // }
//
// class Employee{
//   String? name;
//   int? age;
//   String? subject;
//   double? salary;
//
//   //contructor
// Employee(this.name,this.age, [this.subject="VN",this.salary=0]);
//
// }
// //method
// void display(){
//   print("Name: ${name}");
//   print("Age: ${age}");
//   print("Subject: ${subject}");
//   print("Salary: ${salary}");
// }
// }
// void main(){
//   // Rectangle rect = Rectangle();
//   // rect.length = 10.0;
//   // rect.breaadth = 5.0;
//   // print('Area: ${rect.area()}');
//   Employee employee = Employee("John", 30, "Math", 5000.0);
// }

class Chair{
  String? name; String?color;
  //contructor
Chair({this.name , this.color});

//method
void display(){
  print("name: ${this.name}");
  print("Color: ${this.color}");
}
}


//tao gia tri mac dinh
// class Table{
// String? name;
// String?color;
// //contructor
// Table({this.name = "table1", this.color= "white"});
// //method
//   void display(){
//     print("name: ${this.name}");
//     print("Color: ${this.color}");
//   }
// }

// class Mobile{
//   String? name;
//   String?color;
//   int? price;
//
// //contructor
//   Mobile(this.name, this.color, this.price);
//   Mobile.namadConStructor(this.name, this.color, [this.price =0]);
// //method
//   void display(){
//     print("Mobile name: $name.");
//     print("Mobile color: $color");
//     print("Mobile price: $price");
//   }
// }

class Animal{
  String? name;
  int? age;

  Animal(){
    print("This is a default construc ");

  }
  Animal.namedConstructor(String name, int age){
    this.name = name;
    this.age = age;

  }
  Animal.nameConStructor2(String name){
    this.name = name;
  }
}

class Point{
  final int x;
  final int y;
  const Point(this.x, this.y);
}



class NoteBook{
  String? _name;
  double? _price;

  set name(String name) => this._name =name;
  set price(double price) => this._price =price;
  void display(){
    print("Name: ${this._name}");
    print("Price: ${this._price}");
  }


}
void main(){
  Chair chair = Chair(name: "Chair1", color: "Red");
  chair.display();

  // Table table = Table();
  // table.display();

  Animal animal = Animal.namedConstructor("Dog", 5);
  print("name: ${animal.name}");
  print("Age: ${animal.age}");

  Animal animal2 = Animal.nameConStructor2("Cat");
  print("Name: ${animal2.name}");


  //class point

  Point p1 = const Point(10, 20);
  print("The p1 has ocde is: ${p1.hashCode}");
  Point p2  = const Point(30, 40);
  print("The p2 has ocde is: ${p2.hashCode}");
  Point p3 = const Point(10, 20);
  print("The p3 has ocde is: ${p3.hashCode}");
  Point p4 = const Point(30, 40);
  print("The p4 has ocde is: ${p4.hashCode}");

  NoteBook nb = new NoteBook();
  nb.name = "dell";
  nb.price = 1000.0;
  nb.display();
}
