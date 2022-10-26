main(List<String> args) {
  var taner = Ogrenci();
  taner.ad = "taner";
  Ogrenci.ogrSayisi++;
  Ogrenci.ogrenciSayisiniYazdir();
  print(
      "${taner.ad} ogrencisi olusturuldu  ve okul kodu : ${Ogrenci.okulKodu}");

  var hasan = Ogrenci();
  hasan.ad = "hasan";
  Ogrenci.ogrSayisi++;
  Ogrenci.ogrenciSayisiniYazdir();
  hasan.adiniSoyle();
  print(
      "${hasan.ad} ogrencisi olusturuldu  ve okul kodu : ${Ogrenci.okulKodu}");
}

class Ogrenci {
  String? ad;

  static const int okulKodu = 1452;

  static int ogrSayisi = 0;

  static void ogrenciSayisiniYazdir() {
    print("Toplam ogrenci sayisi : $ogrSayisi");
    // adiniSoyle(); //static olmayan method ve değişkenlere statik alan içerisinden erişilemez
    // print("Adı yazdır $ad");//static olmayan method ve değişkenlere statik alan içerisinden erişilemez
  }

  void adiniSoyle() {
    ogrenciSayisiniYazdir(); //statik olmayan alanlar static method ve degiskenlere erişebilir.
    print("Benim adım $ad");
  }
}
