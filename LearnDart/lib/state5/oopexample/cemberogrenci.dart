import 'dart:math';
import 'Cember.dart';
import 'Ogrenci.dart';

void main(List<String> args) {
  CemberDaire c1 = CemberDaire(3);
  print("Çevre: ${c1.cevreHesapla()}");
  print("Alan: ${c1.alanHesapla()}");

  List<Ogrenci> ogrenciler = List.filled(5, Ogrenci());

  ogrenciDoldur(ogrenciler);
  for (var degerler in ogrenciler) {
    print(degerler);
  }

  print("Ortalama: ${ogrenciOrtalamaHesapla(ogrenciler)}");
}

void ogrenciDoldur(List<Ogrenci> liste) {
  for (var i = 0; i < liste.length; i++) {
    liste[i] = Ogrenci(
        ogrId: Random().nextInt(1000),
        ogrNot: Random().nextInt(100),
        ad: "taner${Random().nextInt(10)}");
  }
}

double ogrenciOrtalamaHesapla(List<Ogrenci> list) {
  int toplam = 0;

  for (Ogrenci ortalama in list) {
    toplam += ortalama.ogrNot;
  }
  return toplam / list.length;
}
