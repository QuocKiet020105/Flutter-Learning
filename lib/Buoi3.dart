
import 'dart:io';
import 'dart:math';
// void printInfo(String name, String gender, [String title = "Sir/ma'am"]){
//   print("Hello $title $name, you are a $gender.");
// }
//
// void main(){
//   printInfo("Kiet", "Male");
//   printInfo("John", "Male", "Mr.");
//   printInfo("Jane", "Female", "Ms.");
// }

// void printInfo({String? name1, String? gender1}){
//   print("Hello $name1 your gender is $gender1");
// }
//
// void printInfo1({required String name, required String gender}){
//   print("Hello $name your gender is $gender");

// void printInfo(String name, String gender, [String? title]){
//   print("Hello $title $name, you are a $gender.");
// }



// int add (int n1 , int n2) => n1 + n2;


void main() {
  // you can pass values in any order in named parameters
  // printInfo(name1: "Kiet", gender1: "Male");
  // printInfo(gender1: "Male", name1: "John");

  //required

  // printInfo1(name: "Kiet", gender: "Male");
  // printInfo1(name: "Anh", gender: "Male");
  // printInfo("Kiet", "Male");
  // printInfo("Anh", "Male", "Mr.");
  // printInfo("Jane", "Female", "Ms.");

  //Anonymous function
  // var cube = (int num) {
  //   return num * num * num;
  // };
  //
  // print("the cube of 2 is ${cube(2)}");
  // print("the cube of 3 is ${cube(3)}");



  // int num1 = 100;
  // int num2 =30;
  //
  // print("The sum is ${add(num1, num2)}");

  // {
  //   Random random = new Random();
  //   int randomNumber = random.nextInt(10);
  //   print("Generated random number 0 to 9: $randomNumber");
  //
  //   int randomNumber2 = random.nextInt(10)+1;
  //   print("Generated random number 1 to 10: $randomNumber2");
  // }
  
  
  //  chuong trinh tao ra cac so ngau nhien tu 10 den 20
  // int min = 10;
  // int max = 20;
  //
  // int randomnum = min + Random().nextInt((max + 1) - min);
  // print("Random number between $min and $max: $randomnum");


  // // tao  ra mot danh sach gom 10 so ngau nhien tu 1 den 100
  // {
  //   List<int> randomList = List.generate(10,(_) => Random().nextInt(100) + 1);
  //   print("Random list: $randomList");
  // }
  //
  // var myList = [3,4,2,5];
  // print(myList);
  // myList.insertAll(1, [6,7,10,9]);
  // print(myList);
  //
  // var list = [10,15,20,25,30];
  // print("List  before update : ${list}");
  // list.replaceRange(0, 4, [5,6,7,8]);
  // print("list after : ${list}");
  //
  // var list = [10,20,30,40,50];
  // print(";ist ${list}");
  // list.removeRange(0, 3);
  // print(list);

  // List<int> list = [10,20,30,40,50];
  // var doubleList = list.map((n) => n*2).toList();
  // print((doubleList));

  // List<String> names = ["Kiet", "Anh", "Cuong"];
  // List<String> names2 = ["Hang", "Huong", "Thanh"];
  // List<String> allNames = [...names, ...names2];
  // print(allNames);

  // bool sad =false;
  // var cart = ['milk','ghe', if (sad) 'ber'];
  // print(cart);

  List<int> numbers = [2,4,6,8,10,11,12,13,14];
  List<int> even = numbers.where((numbers) => numbers.isEven).toList();
  print(even);

}