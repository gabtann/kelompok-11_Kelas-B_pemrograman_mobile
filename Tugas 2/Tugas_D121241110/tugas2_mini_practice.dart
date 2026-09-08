void main() {
  // 1. Daftar harga (built-in type: Map)
  Map<String, int> daftarHarga = {
    "Beras": 70000,
    "Minyak": 25000,
    "Gula": 18000,
    "Telur": 30000,
  };

  // 2. Daftar belanjaan (built-in type: List)
  List<String> daftarBelanja = [
    "Beras",
    "Minyak",
    "Gula",
    "Telur",
  ];

  int total = hitungTotal(daftarBelanja, daftarHarga);
  int diskon = hitungDiskon(total);
  int totalAkhir = total - diskon;

  print("=== STRUK BELANJA ===");
  tampilkanBelanja(daftarBelanja, daftarHarga);

  print("Total Belanja : Rp$total");
  print("Diskon        : Rp$diskon");
  print("Total Akhir   : Rp$totalAkhir");
}

// Function menghitung total belanja
int hitungTotal(List<String> belanja, Map<String, int> harga) {
  int total = 0;

  for (String barang in belanja) {
    total += harga[barang]!;
  }

  return total;
}

// 3. Function menentukan diskon
int hitungDiskon(int total) {
  if (total >= 150000) {
    return total * 20 ~/ 100; // Diskon 20%
  } else if (total >= 100000) {
    return total * 10 ~/ 100; // Diskon 10%
  } else if (total >= 50000) {
    return total * 5 ~/ 100; // Diskon 5%
  } else {
    return 0; // Tidak ada diskon
  }
}

// Function menampilkan daftar belanja
void tampilkanBelanja(List<String> belanja, Map<String, int> harga) {
  for (String barang in belanja) {
    print("$barang : Rp${harga[barang]}");
  }
}