void main(List<String> args) {
  int sayi = 5;

  Ogrenci taner = Ogrenci();
  taner.ogrAd = "taner";
  taner.ogrSoyad = "özer";
  taner.ogrNo = 656565;
  taner.aktifMi = true;

  taner.dersCalis();

  Ogrenci kedy = Ogrenci();
  kedy.ogrAd = "Ronaold";
  kedy.ogrSoyad = "Kedy";
  kedy.ogrNo = 1655;
  kedy.aktifMi = false;

  kedy.dersCalis();
}

class Ogrenci {
  int? ogrNo = 1;
  String? ogrAd = "";
  String? ogrSoyad = "";
  bool? aktifMi = true;

  void dersCalis() {
    print("$ogrAd adli Öğrenci ders çalışıyor");
  }
}
