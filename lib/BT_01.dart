import 'dart:io';
void main() {
  // // 1. Viết chương trình in tên của bạn bằng ngôn ngữ Dart.
  String name = "Hồ Quốc Kiệt";
  print(name);

  // 2. Viết chương trình in "Hello I am “John Doe”" và "Hello I’am “John Doe”" với dấu ngoặc đơn và ngoặc kép
  // Dùng dấu nháy đơn cho chuỗi, nháy kép bên trong không cần escape
  print('Hello I am "John Doe"');
  // Dùng dấu nháy kép cho chuỗi, escape dấu nháy đơn bên trong
  print("Hello I\'am \"John Doe\"");

  //3. Khai báo hằng số kiểu int, đặt giá trị là 7.
  const int number = 7;
  print(number);

  //4. Viết chương trình bằng ngôn ngữ Dart tính lãi suất đơn giản. Công thức = (p * t * r) / 100
  double p = 1000;
  double t = 2;
  double r = 5;
  double laiSuat = (p * t * r) / 100;
  print("Lai suat la: $laiSuat");

  //5. Viết chương trình in bình phương của một số bằng cách sử dụng dữ liệu do người dùng nhập.
  print("Nhap mot so:");
  int number1 = int.parse(stdin.readLineSync()!);
  print("Binh phuong cua $number1 la: ${number1 * number1}");

  //6. Viết chương trình in đầy đủ tên và họ bằng cách sử dụng dữ liệu do người dùng nhập.
  print("Nha ten cua ban: ");
  String firstName = stdin.readLineSync()!;
  print("Nhap ho cua ban: ");
  String lastName = stdin.readLineSync()!;
  print("Ho ten day du: $lastName $firstName");

  //7. Viết chương trình tìm thương và số dư của hai số nguyên.
  print("Nhap so nguyen thu nhat: ");
  int a = int.parse(stdin.readLineSync()!);
  print("Nhap so nguyen thu hai: ");
  int b = int.parse(stdin.readLineSync()!);

  int thuong= a~/b;
  int soDu = a%b;
  print("Thuong la: $thuong");
  print("So du la: $soDu");

  //8. Viết chương trình hoán đổi hai số.
  int a1=5;
  int a2=10;
  print("Truoc khi hoan doi: a1 = $a1, a2 = $a2");
  int temp=a1;
  a1=a2;
  a2=temp;
  print("Sau khi hoan doi: a1 = $a1, a2 = $a2");

  //9. Viết chương trình bằng ngôn ngữ Dart để loại bỏ tất cả khoảng trắng khỏi chuỗi ký tự
  String Chuoi= "H e l l o   W o r l d";
  String ketQua= Chuoi.replaceAll(" ", "");
  print("Chuoi sau khi bo khoang trang: $ketQua");

  //10. Viết chương trình Dart để chuyển đổi chuỗi ký tự thành số nguyên.
  String str = "123";
  int number3= int.parse(str);
  print("So nguyen la: $number3");
  print("Kieu du lieu cua number3 la: ${number3.runtimeType}");

  //11. Giả sử, bạn thường xuyên đi ăn nhà hàng với bạn bè và phải chia hóa đơn. Viết chương trình tính toán số tiền phải chia. Công thức = (tổng số tiền hóa đơn) / số người
  print("Nhap tong so tien hoa don: ");
  double tongTien= double.parse(stdin.readLineSync()!);
  print("Nha so nguoi: ");
  int soNguoi = int.parse(stdin.readLineSync()!);

  double tienChia = tongTien / soNguoi ;
  print("So tien phai chia cho moi nguoi la: $tienChia VND");


  //12. Giả sử, khoảng cách từ nhà đến văn phòng là 25 km và bạn đi với tốc độ 40 km/giờ. Hãy viết chương trình để tính thời gian đi đến văn phòng tính bằng phút. Công thức = (khoảng cách) / (tốc độ)
  double khoangCach= 25;
  double tocDo = 40;
  double thoiGianGio= khoangCach / tocDo;
  double thoiGianPhut= thoiGianGio * 60;

  print("Thoi gian gio la $thoiGianGio KM/H");
  print("Thoi gian di den van phong: $thoiGianPhut phut");

}



