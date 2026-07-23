import 'dart:io';

// Bai 1: Them ten vao file hello.txt
void doBai1() {
  File file = File('hello.txt');
  file.writeAsStringSync("Quoc Kiet\n", mode: FileMode.append);
  print("Da them ten vao hello.txt");
}

// Bai 2: Them ten ban be vao file da co ten cua ban
void doBai2() {
  File file = File('hello.txt');
  stdout.write("Nhap so luong ban be muon them: ");
  int count = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  for (int i = 0; i < count; i++) {
    stdout.write("Nhap ten ban thu ${i + 1}: ");
    String? name = stdin.readLineSync();
    if (name != null && name.trim().isNotEmpty) {
      file.writeAsStringSync("$name\n", mode: FileMode.append);
    }
  }

  print("Da them ban be vao hello.txt");
  print("Noi dung file hien tai:");
  print(file.readAsStringSync());
}

// Bai 3: Lay thu muc lam viec hien tai
void doBai3() {
  String currentDir = Directory.current.path;
  print("Thu muc lam viec hien tai: $currentDir");
}

// Bai 4: Sao chep file hello.txt sang hello_copy.txt
void doBai4() {
  File source = File('hello.txt');

  if (!source.existsSync()) {
    print("File hello.txt chua ton tai. Vui long tao truoc (chay bai 1).");
    return;
  }

  File copy = source.copySync('hello_copy.txt');
  print("Da sao chep hello.txt sang ${copy.path}");
}

// Bai 5: Tao 100 tap tin bang vong lap
void doBai5() {
  Directory dir = Directory('generated_files');
  if (!dir.existsSync()) {
    dir.createSync();
  }

  for (int i = 1; i <= 100; i++) {
    File file = File('generated_files/file_$i.txt');
    file.writeAsStringSync("Day la file so $i");
  }

  print("Da tao 100 file trong thu muc 'generated_files'");
}

// Bai 6: Xoa file hello_copy.txt (dam bao da tao truoc)
void doBai6() {
  File source = File('hello.txt');
  File copy = File('hello_copy.txt');

  // Dam bao file hello_copy.txt da duoc tao
  if (!copy.existsSync()) {
    if (source.existsSync()) {
      source.copySync('hello_copy.txt');
      print("Chua co hello_copy.txt, da tu tao truoc khi xoa.");
    } else {
      print("Khong the tao hello_copy.txt vi hello.txt chua ton tai.");
      return;
    }
  }

  copy.deleteSync();
  print("Da xoa file hello_copy.txt");
}

// Bai 7: Luu thong tin hoc sinh vao file CSV va doc lai
void doBai7() {
  File csvFile = File('students.csv');

  // Ghi tieu de neu file chua ton tai
  if (!csvFile.existsSync()) {
    csvFile.writeAsStringSync("Ten,Tuoi,DiaChi\n");
  }

  stdout.write("Nhap so luong hoc sinh can them: ");
  int count = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  for (int i = 0; i < count; i++) {
    stdout.write("Nhap ten hoc sinh ${i + 1}: ");
    String name = stdin.readLineSync() ?? '';

    stdout.write("Nhap tuoi: ");
    String age = stdin.readLineSync() ?? '';

    stdout.write("Nhap dia chi: ");
    String address = stdin.readLineSync() ?? '';

    csvFile.writeAsStringSync("$name,$age,$address\n", mode: FileMode.append);
  }

  print("\nDa luu thong tin vao students.csv");
  print("Noi dung file CSV:");

  List<String> lines = csvFile.readAsLinesSync();
  for (String line in lines) {
    List<String> fields = line.split(',');
    print(fields.join(" | "));
  }
}

void main() {
  while (true) {
    print("\n===== MENU BAI TAP FILE =====");
    print("1. Them ten vao hello.txt");
    print("2. Them ban be vao file");
    print("3. Lay thu muc lam viec hien tai");
    print("4. Sao chep file hello.txt");
    print("5. Tao 100 tap tin");
    print("6. Xoa file hello_copy.txt");
    print("7. Luu va doc file CSV hoc sinh");
    print("0. Thoat chuong trinh");
    stdout.write("Chon bai tap (0-7): ");

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
      case 0:
        print("Da thoat chuong trinh.");
        return;
      default:
        print("Lua chon khong hop le, vui long chon lai!");
    }
  }
}