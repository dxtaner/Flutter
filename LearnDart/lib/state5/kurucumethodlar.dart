void main(List<String> args) {
  var bmw = Araba("BMW 3.20", 2019, "Lacivert", false);
  bmw.arabaBilgileri();

  var chevrolet = Araba("Chevrolet Camaro", 2015, "Siyah Beyaz", true);
  chevrolet.arabaBilgileri();

  var fiat = Araba("Fiaat Egea");
  fiat.arabaBilgileri();

  var term = Araba("term", 2015);
  term.arabaBilgileri();
}

class Araba {
  var marka, yil, renk, otomatikMi;

  Araba(this.marka, [this.yil, this.renk, this.otomatikMi]) {
    if (yil == null) {
      yil = "Boş";
    }
    if (renk == null) {
      renk == "Boş";
    }
    if (otomatikMi == null) {
      otomatikMi == "Boş";
    }
  }
  /*
  Araba(var marka, var yil, var renk, var otomatikMi) {
    // This kullanımı
    this.marka = marka;
    this.yil = yil;
    this.renk = renk;
    this.otomatikMi = otomatikMi;
  }
  */

  void arabaBilgileri() {
    print(
        "Arabanın markası $marka, yılı $yil, arabanın rengi: $renk, otomatik mi: $otomatikMi");
  }
}
