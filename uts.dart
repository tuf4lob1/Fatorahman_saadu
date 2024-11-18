class Pengemudi {
  String nama;
  double rating;
  int jumlahPerjalanan;

  Pengemudi(this.nama)
      : rating = 5.0,
        jumlahPerjalanan = 0;

  void updateRating(double ratingBaru) {
    rating = (rating * jumlahPerjalanan + ratingBaru) / (jumlahPerjalanan + 1);
    jumlahPerjalanan++;
  }

  double ambilOrder(double jarak, double hargaPerKm, {bool diskon = false}) {
    double harga = jarak * hargaPerKm;

    if (diskon && jarak > 10) {
      harga *= 0.9;
    }

    return harga;
  }
}

class AplikasiPemesanan {
  List<Pengemudi> daftarPengemudi = [];

  void tambahPengemudi(Pengemudi pengemudi) {
    daftarPengemudi.add(pengemudi);
  }

  void tampilkanPengemudiRating() {
    print("Pengemudi dengan ratting lebih dari 4.5: ");
    for (var Pengemudi in daftarPengemudi) {
      if (Pengemudi.rating > 4.5) {
        print(Pengemudi.nama);
      }
    }
  }
}
