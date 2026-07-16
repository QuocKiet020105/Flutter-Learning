
import 'dart:collection';
import 'dart:io';
// Order 1
// Set<int> nums = {10, 20, 30};
// nums.addAll([40, 50]);
// print(nums);
//
// // Lap qua set
// for(int n in nums) {
//   print(n);
// }

// So sanh 2 set
// Set<String> fruit1 = {"apple", "banana", "cherry"};
// Set<String> fruit2 = {"banana", "mango", "apple"};
//
// final difference = fruit1.difference(fruit2);
// print(difference);
// // Phan tu tai vi tri trong set
// print(fruit1.elementAt(2));
//
// // Giao giua 2 tap hop
// final intersectionSet = fruit1.intersection(fruit2);
// print(intersectionSet);

/// Order 2
void main() {
  // Map<String, double> expenses = {
  //   'sun': 3000.0,
  //   'mon': 3000.0
  // };
  //
  // print(expenses.keys);
  // print((expenses.keys).runtimeType);
  // print(expenses.values);
  //
  // print(expenses.keys.toList());
  // print((expenses.keys.toList()).runtimeType);
  // print(expenses.values.toList());
  //
  // print(expenses.containsKey('sun'));

  // Map<String, dynamic> book = {
  //   'title': 'Dart Programming',
  //   'author': 'John Doe' ,
  //   'page' : 233
  // };
  //
  // //loopthrough For Each
  // book.forEach((key,value) => print("'key: $key, value: $value'"));

  //Xoa vi tri: dung where
  // Map<String, double> mathMarks = {
  //   "ram" : 30,
  //   "mark": 32 ,
  //   "harry": 88,
  //   "raj" : 69,
  //   "john" : 15,
  //
  // };
  // mathMarks.removeWhere((key, value) => value < 32);
  //   print(mathMarks);

  //   //Chi loc cac so le
  // List<int> numbers = [ 2,4,6,8,10,11,12,13,14];
  // List<int> oddNumbers = numbers.where((number) => number.isOdd).toList();
  // print(oddNumbers);

  //

  // List<String> days = [
  //   "sunday",
  //   "monday",
  //   "tuesday",
  //   "wednesday",
  //   "thursday",
  //   "friday",
  //   "saturday"
  // ];
  // List<String> startWiths = days.where((day) => day.startsWith("s")).toList();
  // print(startWiths);

  // //Tao file
  // File file = File('lib/text.txt');
  // //read file
  // String content = file.readAsStringSync();
  // //print file
  // print(content);
  //
  //
  
  // Lay thong tin tep
  
  // File file = File('lib/text.txt');
  // print('File path: ${file.path}');
  // print("File absolute path: ${file.absolute.path}");
  // //get  file size
  // print("File size: ${file.lengthSync()} bytes");
  // //get last modified time
  // print("Last modified: ${file.lastModifiedSync()}")
  
  //tao file CSV
  //open file
  File file = File('lib/text.csv');
  //read  file
  String contents = file.readAsStringSync();
  
  List<String> lines = contents.split('\n');
  print('--------------------------------------');
  for (var line in lines) {
    print(line);
  }
}


