main(List<String> args) {
  var k1 = Kare();
  k1.en = 4;
  k1.boy = 4;
  print(k1.alanHesapla());
  print(k1.cevreHesapla());
  k1.mesajGoster();

  var d1 = Dikdortgen();
  d1.en = 8;
  d1.boy = 12;
  print(d1.cevreHesapla());
  print(d1.alanHesapla());
  d1.mesajGoster();
}

abstract class Sekil {
  int? en;
  int? boy;

  void mesajGoster() {
    print("Mesaj");
  }

  void alanHesapla();

  void cevreHesapla();
}

class Dikdortgen extends Sekil {
  @override
  int alanHesapla() {
    return en!.toInt() * boy!.toInt();
  }

  @override
  void mesajGoster() {
    super.mesajGoster();
  }

  @override
  int cevreHesapla() {
    return 2 * (en! + boy!);
  }
}

class Kare extends Sekil {
  @override
  int alanHesapla() {
    return en! * boy!;
  }

  @override
  int cevreHesapla() {
    return 2 * (en! + boy!);
  }
}
