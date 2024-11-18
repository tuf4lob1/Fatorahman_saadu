import 'uts.dart';

void main() {
  AplikasiPemesanan aplikasi = AplikasiPemesanan();

  Pengemudi pengemudi = Pengemudi("andi");
  Pengemudi pengemudi1 = Pengemudi("victor");

  aplikasi.tambahPengemudi(pengemudi);
  aplikasi.tambahPengemudi(pengemudi1);

  pengemudi.updateRating(4.8);
  pengemudi.updateRating(5.0);
  pengemudi1.updateRating(4.7);
  pengemudi1.updateRating(4.8);

  double harga = pengemudi.ambilOrder(12, 10000, diskon: true);
  double harga2 = pengemudi1.ambilOrder(8, 10000, diskon: false);

  print("harga perjalanan untuk ${pengemudi.nama} dengan diskon : Rp $harga");
  print("harga perjalanan untuk ${pengemudi1.nama} tanpa diskon : Rp $harga2");

  aplikasi.tampilkanPengemudiRating();
}
