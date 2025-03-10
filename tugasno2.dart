// Fungsi rekursi untuk menampilkan kombinasi 3 karakter
import 'dart:io';

void charCombination(String a, int n) {
  if (n == 0) {
    stdout.write("$a ");
  } else {
    for (int i = 97; i < 100; i++) {
      charCombination(a + String.fromCharCode(i), n - 1);
    }
  }
}

void main() {
  charCombination("", 3);
}
