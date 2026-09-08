// Menyimpan daftar harga barang
Map daftarHarga = {
  'Beras': 75000,
  'Minyak goreng': 20000,
  'Telur': 32000,
  'Gula': 18000,
};

// Menyimpan daftar belanjaan dan jumlahnya
Map daftarBelanjaan = {'Beras': 2, 'Minyak goreng': 2, 'Telur': 1, 'Gula': 1};

// Menyimpan nama barang agar dapat diproses dengan perulangan
var namaBarang = ['Beras', 'Minyak goreng', 'Telur', 'Gula'];

// Menampilkan daftar belanjaan
void tampilkanDaftarBelanjaan() {
  print('-DAFTAR BELANJAAN-');

  for (int i = 0; i < namaBarang.length; i++) {
    int harga = daftarHarga[namaBarang[i]];
    int jumlah = daftarBelanjaan[namaBarang[i]];
    int totalHargaBarang = harga * jumlah;

    print(
      '${namaBarang[i]}: '
      '$jumlah x Rp$harga = '
      'Rp$totalHargaBarang',
    );
  }
}

// Menghitung total seluruh belanjaan
int hitungTotalBelanjaan() {
  int total = 0;

  for (int i = 0; i < namaBarang.length; i++) {
    int harga = daftarHarga[namaBarang[i]];
    int jumlah = daftarBelanjaan[namaBarang[i]];

    total = total + (harga * jumlah);
  }

  return total;
}

// Menentukan diskon berdasarkan total belanjaan
double tentukanDiskon(int totalBelanjaan) {
  if (totalBelanjaan >= 300000) {
    return 0.20;
  } else if (totalBelanjaan >= 200000) {
    return 0.10;
  } else if (totalBelanjaan >= 100000) {
    return 0.05;
  } else {
    return 0.0;
  }
}

// Menampilkan hasil akhir
void tampilkanTotal(int totalBelanjaan, double diskon) {
  double potonganHarga = totalBelanjaan * diskon;
  double totalAkhir = totalBelanjaan - potonganHarga;

  print('-HASIL AKHIR-');
  print('Total belanjaan : Rp$totalBelanjaan');
  print('Diskon          : ${diskon * 100}%');
  print('Potongan harga  : Rp$potonganHarga');
  print('Total akhir     : Rp$totalAkhir');
}

// Entry point program
void main() {
  tampilkanDaftarBelanjaan();

  int totalBelanjaan = hitungTotalBelanjaan();
  double diskon = tentukanDiskon(totalBelanjaan);

  tampilkanTotal(totalBelanjaan, diskon);
}
