void main() {
  // 01. Menyimpan daftar harga menggunakan List (tipe data bawaan)
  List<String> namaBarang = ['Buku Tulis', 'Pulpen', 'Tas Ransel'];
  List<double> hargaBarang = [15000.0, 5000.0, 150000.0];

  // 02. Menyimpan daftar belanjaan (jumlah yang dibeli berurutan sesuai barang di atas)
  List<int> daftarBelanjaan = [5, 2, 1]; // Beli 5 Buku, 2 Pulpen, 1 Tas

  // Memanggil function untuk memproses perhitungan
  hitungTotalBelanja(namaBarang, hargaBarang, daftarBelanjaan);
}

// RULES: Gunakan function
void hitungTotalBelanja(List<String> nama, List<double> harga, List<int> belanjaan) {
  double totalSementara = 0;

  print('= RINCIAN BELANJAAN =');
  
  // Menghitung subtotal menggunakan perulangan berdasarkan panjang List
  for (int i = 0; i < nama.length; i++) {
    double subtotal = harga[i] * belanjaan[i];
    totalSementara += subtotal;
    print('- ${nama[i]} (x${belanjaan[i]}) : Rp$subtotal');
  }

  print('-------------------------');
  print('Total Sementara : Rp$totalSementara');

  // 03. Menentukan case diskon belanjaan
  double diskon = 0;
  String infoDiskon = '';

  // RULES: Gunakan if / else if / else DAN operator comparison (>=)
  if (totalSementara >= 300000) {
    diskon = totalSementara * 0.20; // Diskon 20% jika belanja >= 300.000
    infoDiskon = '20%';
  } else if (totalSementara >= 150000) {
    diskon = totalSementara * 0.10; // Diskon 10% jika belanja >= 150.000
    infoDiskon = '10%';
  } else {
    diskon = 0; // Tidak dapat diskon
    infoDiskon = '0%';
  }

  // Menghitung total akhir
  double totalAkhir = totalSementara - diskon;

  // 04. Menampilkan total akhir belanjaan
  print('Diskon ($infoDiskon)   : Rp$diskon');
  print('=========================');
  print('TOTAL AKHIR     : Rp$totalAkhir');
  print('=========================');
}