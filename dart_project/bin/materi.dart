import 'dart:io';

void main() {
  // 1. Tipe Data

  // String
  String dataString = 'Hello Pemrograman Mobile';
  print(dataString);

  // Num
  num dataNum = 20;
  print(dataNum);

  // Integer
  int myInteger = 10;
  print(myInteger);

  // Double
  double myDouble = 0.1;
  print(myDouble);

  // Boolean
  bool dataBool = true;
  print(dataBool);

  // List
  List<dynamic> dataList = [1, 2, 3, 'a', 'b', 'c'];
  print(dataList);

  // Map
  Map<String, dynamic> dataMap = {
    'url': 'https://unisnu.ac.id/',
    'topic': 'Flutter Engineering',
  };
  print(dataMap);

  // Dynamic
  dynamic a = 12.2;
  a = 'Hello Khanif!';
  print(a);

  // Var
  var penulis = 'Sayuti';
  print(penulis);

  // 2. Variabel
  var umur = 18;
  dynamic nama = 'Khanif';
  String kota = 'Jepara';

  // 3. Operator

  // Operator Aritmatika
  int c = 6;
  c = c + 6; // c = 12
  print("Hasil penjumlahan: $c");

  // Operator Relasional
  if (kota == 'Jepara') print('Kota adalah Jepara');

  // Operator Logika
  var A = true;
  var B = false;
  var expr = A && B; // false
  print("Hasil AND: $expr");

  // Menerima Input dari Pengguna
  print("Masukkan nama:");
  String? inputNama = stdin.readLineSync();
  print("Nama anda adalah ${inputNama}");

  // Percabangan dan Perulangan

  // If-Else Condition
  var testList = [2, 4, 8, 16, 32];
  if (testList.isNotEmpty) {
    print('Tulisan ini akan tampil jika kondisi bernilai true');
    testList.clear();
  }

  // Switch-Case
  int posSaatIni = 10;
  switch (posSaatIni) {
    case 1:
      print("Makan Snack");
      break;
    case 2:
      print("Makan Daging");
      break;
    case 3:
      print("Makan Sayur");
      break;
    case 4:
      print("Berbahagia");
      break;
    default:
      print("Pos yang anda masukkan tidak terdaftar");
  }

  // Perulangan For
  for (var i = 1; i <= 10; i++) {
    print("Number $i");
  }

  // Perulangan While
  int j = 1;
  while (j <= 10) {
    print("nilai while: $j");
    j++;
  }

  // Perulangan Do-While
  int k = 1;
  do {
    print("nilai do while: $k");
    k++;
  } while (k <= 10);

  // Perulangan For-In
  List<String> listNama = ['agus', 'budi', 'cahyo'];
  for (String nama in listNama) {
    print(nama);
  }
}
