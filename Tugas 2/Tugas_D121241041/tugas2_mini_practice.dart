void main() {
  Map<String, double> daftarHarga = {
    'Beras': 15000,
    'Minyak Goreng': 28000,
    'Gula': 14000,
    'Telur': 2500,
    'Susu': 15000,
    'Roti': 7000,
    'Kopi': 25000,
    'Sabun': 16000,
  };

  Map<String, int> daftarBelanjaan = {
    'Beras': 1,
    'Minyak Goreng': 2,
    'Gula': 2,
    'Telur': 4,
    'Susu': 1,
    'Kopi': 1,
};

  print('========================================');
  print('        DAFTAR HARGA TOKO SINAR        ');
  print('========================================');
  for (String item in daftarHarga.keys) {
    print('  $item : Rp ${daftarHarga[item]}');
  }

  print('\n========================================');
  print('          STRUK BELANJAAN ANDA            ');
  print('==========================================');

  double totalBelanjaan = hitungTotal(daftarBelanjaan, daftarHarga);

  double diskon = tentukanDiskon(totalBelanjaan);

  double potongan = totalBelanjaan * (diskon / 100);
  double totalAkhir = totalBelanjaan - potongan;
  print('----------------------------------------');
  print('  Total Belanjaan       :   Rp $totalBelanjaan');
  print('  Diskon ($diskon%)     :   - Rp $potongan');
  print('----------------------------------------');
  print('  TOTAL AKHIR           :   Rp $totalAkhir');
  print('========================================');
  print('  Terima kasih sudah berbelanja!');
  print('========================================');
}

double hitungTotal(Map<String, int> belanjaan, Map<String, double> harga) {
  double total = 0;
  for (String item in belanjaan.keys) {
    int jumlah = belanjaan[item] ?? 0;
    double hargaItem = harga[item] ?? 0;
    double subtotal = hargaItem * jumlah;
    print('  $item x$jumlah : Rp $subtotal');
    total = total + subtotal;
  }
  return total;
}

double tentukanDiskon(double total) {
  if (total >= 200000) {
    print('\n  >> Selamat! Anda mendapat diskon 20%');
    return 20;
  } else if (total >= 150000) {
    print('\n  >> Selamat! Anda mendapat diskon 15%');
    return 15;
  } else if (total >= 100000) {
    print('\n  >> Anda mendapat diskon 10%');
    return 10;
  } else if (total >= 50000) {
    print('\n  >> Anda mendapat diskon 5%');
    return 5;
  } else {
    print('\n  >> Tidak ada diskon (belanja min. Rp 50000)');
    return 0;
  }
}