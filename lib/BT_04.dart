import 'dart:io';

// Bai 1: Tao danh sach ten va in tat ca
void doBai1() {
  List<String> names = ["Kiet", "Anh", "Cuong", "Linh"];
  print("Danh sach ten:");
  for (String name in names) {
    print(name);
  }
}

// Bai 2: Tao tap hop trai cay va in bang vong lap
void doBai2() {
  Set<String> fruits = {"Apple", "Banana", "Mango", "Cherry"};
  print("Danh sach trai cay:");
  for (String fruit in fruits) {
    print(fruit);
  }
}

// Bai 3: Doc danh sach so tien chi tieu, tinh tong
void doBai3() {
  List<double> expenses = [];
  print("Nhap so luong khoan chi tieu: ");
  int count = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  for (int i = 0; i < count; i++) {
    stdout.write("Nhap so tien lan ${i + 1}: ");
    double amount = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
    expenses.add(amount);
  }

  double total = 0;
  for (double e in expenses) {
    total += e;
  }

  print("Danh sach chi tieu: $expenses");
  print("Tong so tien chi tieu: $total");
}

// Bai 4: Danh sach rong kieu chuoi, dung add them 7 ngay
void doBai4() {
  List<String> days = [];
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");
  days.add("Sunday");

  print("Danh sach 7 ngay trong tuan:");
  for (String day in days) {
    print(day);
  }
}

// Bai 5: Them 7 ten ban be, tim ten bat dau bang chu 'A'
void doBai5() {
  List<String> friends = [
    "An",
    "Binh",
    "Cuong",
    "Anh",
    "Duy",
    "Ai",
    "Em"
  ];

  print("Danh sach ban be: $friends");

  String? found = friends.firstWhere(
        (name) => name.startsWith("A"),
    orElse: () => "Khong tim thay",
  );

  print("Ten dau tien bat dau bang chu 'A': $found");
}

// Bai 6: Map chua ten, dia chi, tuoi, quoc gia. Cap nhat quoc gia
void doBai6() {
  Map<String, dynamic> info = {
    "ten": "Quoc Kiet",
    "diaChi": "TP.HCM",
    "tuoi": 20,
    "quocGia": "Vietnam",
  };

  print("Thong tin ban dau: $info");

  // Cap nhat quoc gia
  info["quocGia"] = "Singapore";

  print("Sau khi cap nhat quoc gia:");
  info.forEach((key, value) {
    print("$key: $value");
  });
}

// Bai 7: Map ten - so dien thoai, dung where tim key co do dai 4
void doBai7() {
  Map<String, String> phoneBook = {
    "Kiet": "0901234567",
    "Anh": "0912345678",
    "Cuong": "0987654321",
    "Duy": "0977889900",
  };

  print("Danh ba: $phoneBook");

  var keysLength4 = phoneBook.keys.where((key) => key.length == 4);

  print("Cac ten co do dai 4 ky tu: ${keysLength4.toList()}");
}

// Bai 8: Ung dung quan ly cong viec don gian
List<String> tasks = [];

void addTask(String task) {
  tasks.add(task);
  print("Da them: $task");
}

void removeTask(String task) {
  if (tasks.contains(task)) {
    tasks.remove(task);
    print("Da xoa: $task");
  } else {
    print("Khong tim thay task nay!");
  }
}

void viewTasks() {
  if (tasks.isEmpty) {
    print("Danh sach cong viec dang trong.");
  } else {
    print("Danh sach cong viec:");
    for (int i = 0; i < tasks.length; i++) {
      print("${i + 1}. ${tasks[i]}");
    }
  }
}

void doBai8() {
  while (true) {
    print("\n----- QUAN LY CONG VIEC -----");
    print("1. Them cong viec");
    print("2. Xoa cong viec");
    print("3. Xem danh sach cong viec");
    print("0. Quay lai menu chinh");
    stdout.write("Chon: ");

    int choice = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    switch (choice) {
      case 1:
        stdout.write("Nhap ten cong viec: ");
        String task = stdin.readLineSync() ?? '';
        addTask(task);
        break;
      case 2:
        stdout.write("Nhap ten cong viec can xoa: ");
        String task = stdin.readLineSync() ?? '';
        removeTask(task);
        break;
      case 3:
        viewTasks();
        break;
      case 0:
        return;
      default:
        print("Lua chon khong hop le!");
    }
  }
}

void main() {
  while (true) {
    print("\n===== MENU BAI TAP =====");
    print("1. Danh sach ten");
    print("2. Tap hop trai cay");
    print("3. Tong tien chi tieu");
    print("4. Danh sach 7 ngay");
    print("5. Tim ban be bat dau bang A");
    print("6. Map thong tin ca nhan");
    print("7. Map so dien thoai - where");
    print("8. Ung dung quan ly cong viec");
    print("0. Thoat chuong trinh");
    stdout.write("Chon bai tap (0-8): ");

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
      case 0:
        print("Da thoat chuong trinh.");
        return;
      default:
        print("Lua chon khong hop le, vui long chon lai!");
    }
  }
}