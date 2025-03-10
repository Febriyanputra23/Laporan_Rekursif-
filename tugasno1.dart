import 'dart:io';

// Fungsi untuk menghitung nilai pada segitiga Pascal
int pascal(int row, int col) {
  if (col == 0 || col == row) {
    return 1; // Basis kasus: nilai pada ujung segitiga adalah 1
  }
  // Rekurens untuk menghitung nilai berdasarkan baris dan kolom sebelumnya
  return pascal(row - 1, col - 1) +
      pascal(row - 1, col); // rumus segitiga pascal
}

// Fungsi untuk mencetak segitiga Pascal
void printSegitigaPascal(int numRows) {
  for (int i = 0; i < numRows; i++) {
    // Menambahkan spasi untuk membuat segitiga simetris
    String spaces = ' ' * (numRows - i) * 2;
    stdout.write(spaces);

    for (int j = 0; j <= i; j++) {
      stdout.write('${pascal(i, j)}   '); // Menambahkan spasi antar angka
    }
    print(""); // Pindah ke baris baru
  }
}

void main() {
  // Jumlah baris segitiga Pascal yang ingin dicetak
  int numRows = 5;

  // Memanggil fungsi untuk mencetak segitiga Pascal
  printSegitigaPascal(numRows);
}
