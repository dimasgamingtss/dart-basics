import 'dart:io';
import 'dart:math';

// 1. Program menentukan apakah seseorang memenuhi syarat untuk memilih
void cekHakPilih() {
  stdout.write("Masukkan usia Anda: ");
  int usia = int.parse(stdin.readLineSync()!);
  if (usia >= 17) {
    print("Anda memenuhi syarat untuk memilih.");
  } else {
    print("Anda belum memenuhi syarat untuk memilih.");
  }
}

// 2. Program menggunakan switch-case untuk menentukan angka positif, negatif, atau nol
void cekAngka() {
  stdout.write("Masukkan angka: ");
  int angka = int.parse(stdin.readLineSync()!);
  switch (angka.sign) {
    case 1:
      print("Angka positif");
      break;
    case -1:
      print("Angka negatif");
      break;
    case 0:
      print("Angka nol");
      break;
  }
}

// 3. Program menghitung faktorial dengan perulangan while
void hitungFaktorial() {
  stdout.write("Masukkan angka: ");
  int n = int.parse(stdin.readLineSync()!);
  int faktorial = 1, i = n;
  while (i > 0) {
    faktorial *= i;
    i--;
  }
  print("Faktorial dari $n adalah $faktorial");
}

// 4. Program menebak angka antara 1-10 dengan do-while
void tebakAngka() {
  int angkaRahasia = Random().nextInt(10) + 1;
  int tebakan;
  do {
    stdout.write("Tebak angka (1-10): ");
    tebakan = int.parse(stdin.readLineSync()!);
    if (tebakan < angkaRahasia) {
      print("Tebakan terlalu kecil!");
    } else if (tebakan > angkaRahasia) {
      print("Tebakan terlalu besar!");
    }
  } while (tebakan != angkaRahasia);
  print("Selamat! Anda menebak angka yang benar.");
}

// 5. Program mencetak elemen daftar dalam urutan terbalik menggunakan for-in
void cetakListTerbalik() {
  List<int> daftar = [10, 20, 30, 40, 50];
  for (var item in daftar.reversed) {
    print(item);
  }
}

// 6. Program menentukan tahun kabisat
void cekTahunKabisat() {
  stdout.write("Masukkan tahun: ");
  int tahun = int.parse(stdin.readLineSync()!);
  if ((tahun % 4 == 0 && tahun % 100 != 0) || (tahun % 400 == 0)) {
    print("$tahun adalah tahun kabisat.");
  } else {
    print("$tahun bukan tahun kabisat.");
  }
}

// 7. Program menentukan hari kerja atau akhir pekan dengan switch-case
void cekHariKerja() {
  stdout.write("Masukkan nama hari (contoh: Senin): ");
  String hari = stdin.readLineSync()!.toLowerCase();
  switch (hari) {
    case 'senin':
    case 'selasa':
    case 'rabu':
    case 'kamis':
    case 'jumat':
      print("Ini adalah hari kerja.");
      break;
    case 'sabtu':
    case 'minggu':
      print("Ini adalah akhir pekan.");
      break;
    default:
      print("Hari tidak valid.");
  }
}

// 8. Program menghitung jumlah digit dari suatu angka
void hitungJumlahDigit() {
  stdout.write("Masukkan angka: ");
  int angka = int.parse(stdin.readLineSync()!);
  int jumlahDigit = 0;
  while (angka != 0) {
    angka ~/= 10;
    jumlahDigit++;
  }
  print("Jumlah digit: $jumlahDigit");
}

// 9. Program permainan menebak angka antara 1-100
void permainanTebakAngka() {
  int angkaRahasia = Random().nextInt(100) + 1;
  int tebakan;
  do {
    stdout.write("Tebak angka (1-100): ");
    tebakan = int.parse(stdin.readLineSync()!);
    if (tebakan < angkaRahasia) {
      print("Tebakan terlalu kecil!");
    } else if (tebakan > angkaRahasia) {
      print("Tebakan terlalu besar!");
    }
  } while (tebakan != angkaRahasia);
  print("Selamat! Anda berhasil menebak angka.");
}

// 10. Program mencetak kata dan panjangnya menggunakan for-in
void cetakPanjangKata() {
  List<String> kataList = ["Dart", "Flutter", "Programming", "Code"];
  for (var kata in kataList) {
    print("$kata: ${kata.length} karakter");
  }
}

// Fungsi utama untuk menjalankan semua program
void main() {
  cekHakPilih();
  cekAngka();
  hitungFaktorial();
  tebakAngka();
  cetakListTerbalik();
  cekTahunKabisat();
  cekHariKerja();
  hitungJumlahDigit();
  permainanTebakAngka();
  cetakPanjangKata();
}
