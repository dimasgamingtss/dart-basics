import 'dart:io';

// 1. Cetak nama
void cetakNama() {
  print("Muhammad Dimas Arya Nugroho");
}

// 2. Cetak Hello dengan tanda kutip tunggal dan ganda
void cetakHello() {
  print("Masukkan nama:");
  String? nama = stdin.readLineSync();

  print("Hello, saya '$nama'");
  print('Hello, saya "$nama"');
}

// 3. Konstanta dengan nilai 7
void konstanta() {
  const int angka = 7;
  print("Nilai konstanta: $angka");
}

// 4. Hitung bunga sederhana
void hitungBunga() {
  print("Masukkan jumlah pokok pinjaman:");
  double p = double.parse(stdin.readLineSync()!);

  print("Masukkan tingkat bunga tahunan (%):");
  double r = double.parse(stdin.readLineSync()!);

  print("Masukkan waktu (tahun):");
  double t = double.parse(stdin.readLineSync()!);

  double bunga = (p * t * r) / 100;
  print("Bunga sederhana: $bunga");
}

// 5. Cetak persegi
void cetakPersegi() {
  print("Masukkan angka:");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print('*' * n);
  }
}

// 6. Cetak nama lengkap dari input
void cetakNamaLengkap() {
  print("Masukkan nama depan:");
  String? namaDepan = stdin.readLineSync();

  print("Masukkan nama belakang:");
  String? namaBelakang = stdin.readLineSync();

  print("Nama lengkap: $namaDepan $namaBelakang");
}

// 7. Hasil bagi dan sisa
void bagiDanSisa() {
  print("Masukkan bilangan pertama:");
  int a = int.parse(stdin.readLineSync()!);

  print("Masukkan bilangan kedua:");
  int b = int.parse(stdin.readLineSync()!);

  print("Hasil bagi: ${a ~/ b}");
  print("Sisa bagi: ${a % b}");
}

// 8. Tukar dua bilangan
void tukarBilangan() {
  print("Masukkan bilangan pertama:");
  int a = int.parse(stdin.readLineSync()!);

  print("Masukkan bilangan kedua:");
  int b = int.parse(stdin.readLineSync()!);

  // Menukar nilai tanpa variabel tambahan
  a = a + b;
  b = a - b;
  a = a - b;

  print("Setelah ditukar: a = $a, b = $b");
}

// 9. Hapus semua spasi dari string
void hapusSpasi() {
  print("Masukkan teks:");
  String? teks = stdin.readLineSync();

  String hasil = teks!.replaceAll(" ", "");
  print("Teks tanpa spasi: $hasil");
}

// 10. Konversi String ke int
void konversiStringKeInt() {
  print("Masukkan angka:");
  String? angkaStr = stdin.readLineSync();

  int angka = int.parse(angkaStr!);
  print("Angka dalam bentuk integer: $angka");
}

// 11. Bagi tagihan restoran
void bagiTagihan() {
  print("Masukkan total jumlah tagihan:");
  double totalTagihan = double.parse(stdin.readLineSync()!);

  print("Masukkan jumlah orang:");
  int jumlahOrang = int.parse(stdin.readLineSync()!);

  double hasil = totalTagihan / jumlahOrang;
  print("Setiap orang harus membayar: Rp. ${hasil.toStringAsFixed(2)}");
}

void main() {
  print("Pilih tugas yang ingin dijalankan (1-11):");
  int pilihan = int.parse(stdin.readLineSync()!);

  switch (pilihan) {
    case 1:
      cetakNama();
      break;
    case 2:
      cetakHello();
      break;
    case 3:
      konstanta();
      break;
    case 4:
      hitungBunga();
      break;
    case 5:
      cetakPersegi();
      break;
    case 6:
      cetakNamaLengkap();
      break;
    case 7:
      bagiDanSisa();
      break;
    case 8:
      tukarBilangan();
      break;
    case 9:
      hapusSpasi();
      break;
    case 10:
      konversiStringKeInt();
      break;
    case 11:
      bagiTagihan();
      break;
    default:
      print("Pilihan tidak valid!");
  }
}
