import 'dart:io';

// Fungsi rekursif untuk membuat dan mencetak semua kombinasi karakter dari charset
void buatKombinasi(String charset, String current, int length) {
  // jika panjang string saat ini sudah sesuai dengan N, cetak hasil
  if (current.length == length) {
    stdout.write("$current ");
    return;
  }

  // Loop untuk menambahkan karakter berikutnya dari charset
  for (int i = 0; i < charset.length; i++) {
    buatKombinasi(charset, current + charset[i], length);
  }
}

void main() {
  stdout.write("Masukkan jumlah karakter (N): ");
  int N = int.parse(stdin.readLineSync()!);
  String charset = "abc"; // Karakter yang digunakan dalam kombinasi

  print("\nSemua kombinasi yang mungkin:");
  buatKombinasi(charset, "", N);
}
