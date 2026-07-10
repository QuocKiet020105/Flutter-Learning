import 'dart:io';
import 'dart:math';

// Bai 1: In ten bang ham
void doBai1() {
  String name = "Quoc Kiet";
  print("Ten cua toi la: $name");
}

// Bai 2: In so chan trong khoang
void doBai2() {
  int start = 1;
  int end = 20;
  print("Cac so chan tu $start den $end:");
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

// Bai 3: Ham greet
void greet(String name) {
  print("Hello, $name");
}

void doBai3() {
  greet("John");
}

// Bai 4: Tao mat khau ngau nhien
String generatePassword(int length) {
  const chars =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#\$%';
  Random random = Random();
  String password = '';
  for (int i = 0; i < length; i++) {
    password += chars[random.nextInt(chars.length)];
  }
  return password;
}

void doBai4() {
  String pw = generatePassword(10);
  print("Mat khau ngau nhien: $pw");
}

// Bai 5: Tinh dien tich hinh tron
double circleArea(double radius) {
  return pi * radius * radius;
}

void doBai5() {
  double area = circleArea(5);
  print("Dien tich hinh tron ban kinh 5 la: ${area.toStringAsFixed(2)}");
}

// Bai 6: Dao nguoc chuoi
String reverseString(String str) {
  return str.split('').reversed.join('');
}

void doBai6() {
  String reversed = reverseString("Hello Dart");
  print("Chuoi dao nguoc: $reversed");
}

// Bai 7: Tinh luy thua
int power(int base, int exponent) {
  int result = 1;
  for (int i = 0; i < exponent; i++) {
    result *= base;
  }
  return result;
}

void doBai7() {
  int result = power(5, 3);
  print("5 mu 3 = $result");
}

// Bai 8: Ham add
num add(num a, num b) {
  return a + b;
}

void doBai8() {
  num sum = add(10, 20);
  print("Tong la: $sum");
}

// Bai 9: Ham maxNumber
num maxNumber(num a, num b, num c) {
  num max = a;
  if (b > max) {
    max = b;
  }
  if (c > max) {
    max = c;
  }
  return max;
}

void doBai9() {
  num max = maxNumber(5, 12, 8);
  print("So lon nhat la: $max");
}

// Bai 10: Ham isEven
bool isEven(int number) {
  return number % 2 == 0;
}

void doBai10() {
  int number = 7;
  bool even = isEven(number);
  print("$number la so chan? $even");
}

// Bai 11: Ham createUser
void createUser(String name, int age, [bool isActive = true]) {
  print("User: $name, Age: $age, Active: $isActive");
}

void doBai11() {
  createUser("Kiet", 20);
  createUser("Anh", 22, false);
}

// Bai 12: Ham calculateArea
double calculateArea([double length = 1, double width = 1]) {
  return length * width;
}

void doBai12() {
  double area1 = calculateArea(5, 3);
  double area2 = calculateArea();
  print("Dien tich hinh chu nhat (5x3): $area1");
  print("Dien tich mac dinh (1x1): $area2");
}

void main() {
  while (true) {
    print("\n===== MENU BAI TAP =====");
    print("1. In ten bang ham");
    print("2. In so chan trong khoang");
    print("3. Ham greet");
    print("4. Tao mat khau ngau nhien");
    print("5. Tinh dien tich hinh tron");
    print("6. Dao nguoc chuoi");
    print("7. Tinh luy thua");
    print("8. Ham add");
    print("9. Ham maxNumber");
    print("10. Ham isEven");
    print("11. Ham createUser");
    print("12. Ham calculateArea");
    print("0. Thoat chuong trinh");
    stdout.write("Chon bai tap (0-12): ");

    String? input = stdin.readLineSync();
    int choice = int.tryParse(input ?? '') ?? -1;

    switch (choice) {
      case 1:
        doBai1();
        break;
      case 2:
        doBai2();
        break;
      case 3:
        doBai3();
        break;
      case 4:
        doBai4();
        break;
      case 5:
        doBai5();
        break;
      case 6:
        doBai6();
        break;
      case 7:
        doBai7();
        break;
      case 8:
        doBai8();
        break;
      case 9:
        doBai9();
        break;
      case 10:
        doBai10();
        break;
      case 11:
        doBai11();
        break;
      case 12:
        doBai12();
        break;
      case 0:
        print("Da thoat chuong trinh.");
        return; // thoat khoi ham main, dung ca while loop
      default:
        print("Lua chon khong hop le, vui long chon lai!");
    }
  }
}