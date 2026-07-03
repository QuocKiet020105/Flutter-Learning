
import 'dart:io';
void main() {
  // var firstName = "Quoc";
  // var lastName = "Kiet";
  // print("Full name is $firstName $lastName");


  // int num1 = 10;
  // int num2 = 3;
  //
  // //toan tu
  // int sum = num1 + num2;
  // int diff = num1 - num2;
  // int mull = num1 * num2;
  // double div = num1 / num2;
  // int quotient = num1 ~/ num2;
  // int remainder = num1 % num2;

  //khai bao pi
  //  const pi = 3.14;
  //  print("So pi la:  $pi");
  //
  //
  // //display
  // print(" The sum is $sum");
  // print(" The diff is  $diff");
  // print(" The mull is $mull");
  // print(" The double is $div");
  // print("The Quotient is $quotient");
  // print("the Remainder is $remainder");


  //Me
  // String name = "Kiet";
  // String address= "VN";
  // num age = 20;
  // num height = 1.73;
  // bool isMarride = false;
  //
  // print("Name is $name");
  // print("Address is $address");
  // print("Age: $age");
  // print("Height: $height");
  // print("Ismarried: $isMarride");
  //
  //
  // int num1 = 100;
  // double num2 = 130.2;
  // num num3 = 50;
  // num num4 = 50.4;

  //sum
  // num sum = num1 + num2 + num3 + num4;
  //
  // print("Num1: $num1");
  // print("Num2: $num2");
  // print("Num3: $num3");
  // print("Num4: $num4");
  // print("Sum: $sum");

  // double price = 1130.2232323233233;
  // print(price.toStringAsFixed(2));
  //
  // String multiLineText = '''
  // This is Mutil Line Text
  // with 3 single quote
  // I`m also writing here
  // ''';

  // print("Mutil Line Text $multiLineText");
  //
  // //xuong dong co the dung /n hoac /t
  //
  // num price1 = 10;
  // String withouutRawString = "The value of price is \t $price1";
  // String withRawString = r"The value of price is \t $price1";

  // print("WithoutRawString: $withouutRawString");
  // print("WithRawString: $withRawString");

  // String strvalue = "1";
  // print("Type of strvalue is ${strvalue.runtimeType}");
  //
  // int intvalue = int.parse(strvalue);
  // print("Value of intvalue is $intvalue");
  //
  // print("Type of intvalue is ${intvalue.runtimeType}");


  // String strvalue = "1.1";
  // print("Type of strvalue is ${strvalue.runtimeType}");
  // double doublevalue = double.parse(strvalue);
  // print("Value of  doublevaue is $doublevalue");
  // print("Type of doublevalue is ${doublevalue.runtimeType}");
  //
 //  int one = 1;
 //  print("Type of one is ${one.runtimeType}");
 //  String oneInString = one.toString();
 //  print("Value of oneInString is $oneInString");
 //
 //  print("Type of oneInString is ${oneInString.runtimeType}");
 //
 //
 //  double num1 = 10.01;
 //  int  num2 = num1.toInt();
 //
 //  print("The value of  num1  is $num1 .Its type is ${num1.runtimeType}");
 //  print("The value of  num2  is $num2 .Its type is ${num2.runtimeType}");
 //
 //  //LIST
 //
 //  List<String> names = [ "Kiet" , "Anh", "Cuong"];
 //  print("Value of name is $names");
 //  print("Value of name[0] is ${names[0]}");
 //  print("Value of name[1] is ${names[1]}");
 //  print("Value of name[2] is ${names[2]}");
 //
 //
 //
 //  int length = names.length;
 //  print("The Length of name is $length");
 //
 //  names.add("Huong");
 //  print("The Lenght New of name is $names");
 //  int newLength = names.length;
 //  print("The new length of name is $newLength");
 //
 //  names.remove("Kiet");
 //  print("After remove $names");
 //
 //  names.removeAt(0); // Remove by index
 //  print("After removeAt: $names");
 //
 //  //kiem tra thu phan tu co trong danh sach khong
 //  bool isContained = names.contains("Kiet");
 //  print("Kiet contains in list $isContained ");
 //
 //  //check index
 //  print("Kiet contains in list ${names.indexOf("Cuong")} ");
 //
 //  print("list is ${names.isEmpty} ");
 //
 //  //TAP HOP
 //  Set<String> weeday = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
 //  print(weeday);
 //
 // //Add on
 //  weeday.addAll(["Sun", "kk"]);
 //  print(weeday);
 //
 //  //kiem tra
 //  bool  weekday= weeday.contains("Sun");
 //  print("Sun contains in set $weekday");
 //
 //  //remove
 //  weeday.remove("Sun");
 //  print(weeday);
 //
 //  //clear
 //  weeday.clear();

  // //Mpas
  // Map<String, String> Me = {
  //   "name": "Ronaldo",
  //   "age": "20",
  //   "address": "VN"
  // };
  // // print(Me['name']);
  // // print(Me['name'] = "Messi");
  // //
  // // Me.remove("name");
  // // print("After remove: $Me");
  // //
  // //contains
  // print("Contains key name: ${Me.containsKey("name")}");
  //
  // //empty
  // print("Is map empty: ${Me.isEmpty}");
  //
  // //clear
  // print("Before clear: $Me");
  // Me.clear();
  // print("After clear: $Me");
  //
  // //đếm số phần tử trong map
  // print("Length of map: ${Me.length}");

  //
  // String value = "a";
  // print(value.runes);
  //
  //
  // var a=10;
  // print(a.runtimeType);
  // print(a is  !int);
 //
 //  //dynamic
 //  dynamic myVariable = 50;
 //  myVariable = "Kiet";
 //  print(myVariable);
 //
 //  int num1= 10;
 //  int num2= 3;
 //
 //  num2  = ++num1;
 //  print("the value of num2 is $num2");
 //  //rest value to 0
 //  num1 =0;
 //  num2 =0 ;
 //  //post
 //
 //  num2 = num1++;
 //  print("the value of num2 is $num2");
 //
 //  //check chuoi
 //
 //  String value1 = "QuocKiet";
 //  int age = 21;
 //  print("$value1 is String");
 //  print(age is !int);
 //
 //
 //  //input(Nhap dau vao)
 //  print("Enter your name: ");
 //  String? name = stdin.readLineSync();
 //  print("The entered name is: ${name}");
 //
 // print("Enter number: ");
 // int? number = int.parse(stdin.readLineSync()!);
 // print("The entered number is: ${number}");
 //
 //
 // //nhap so thuc
 // print("Enter a height: ");
 // double? decimalNumber = double.parse(stdin.readLineSync()!);
 // print("The entered decimal number is: ${decimalNumber}");

 // //Noi chuoi
 //  String str = "Hi";
 //  print(str.codeUnits);
 //  print(str.isEmpty);
 //  print(str.isNotEmpty);

  //Example of trim()
  String address1  = " USA";
  String address2  = "USA ";
  print(address1.trim());
  print(address2.trim());

  //example of compareTo()
  String item1 = "Apple";
  String item2 = "Ant";
  String item3 = "Basket";

  print("object1 compareTo object2: ${item1.compareTo(item2)}");
  print("object1 compareTo object3: ${item1.compareTo(item3)}");
  print("object3 compareTo object2: ${item3.compareTo(item2)}");



}


