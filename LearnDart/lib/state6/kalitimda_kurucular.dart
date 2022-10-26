main(List<String> args) {
  Kopek k1 = new Kopek("labrador", "siyah");
  // var k2=new Kopek();
  //var k3=Kopek();

  Kopek k2 = Kopek.isimliKurucu("booe", "kızıl");
  Kopek k3 = Kopek.isimliKurucu2("mavi");
}

class Hayvan {
  String? renk;
  Hayvan(String renkkk) {
    this.renk = renkkk;
    print("Hayvan sınıfından nesne üretildi rengi $renk");
  }

  Hayvan.isimliKurucu() {}
}

class Kopek extends Hayvan {
  String cins;

  Kopek(String cins1, String renk) : super(renk) {
    this.cins = cins1;
    print("Köpek sınıfından nesne üretildi cinsi $cins rengi : $renk");
  }

  Kopek.isimliKurucu(String cins2, String renk) : super(renk) {
    this.cins = cins2;
    print("Köpek sınıfından nesne üretildi cinsi $cins rengi : $renk");
  }

  Kopek.isimliKurucu2(String renk) : super.isimliKurucu() {
    print(
        "Sadece renk alan ve üst sınıfı parametre almayan kurucu metot tetiklendi");
  }
}
