main(List<String> args) {
  Er taner = new Er();
  Er hasan = Er();

  Asker asker = Asker();
  Yuzbasi ali = Yuzbasi();

  hazirOl(asker);
  hazirOl(taner); // yukarı cevrim upcasting
  hazirOl(ali); // yukari cevrim upcasting

  Asker yeni = Er();

  hazirOl(yeni);
}

void hazirOl(Asker asker) {
  asker.selamVer();
}

class Asker {
  void selamVer() {
    print("Asker selam verdi");
  }
}

class Er extends Asker {
  @override
  void selamVer() {
    print("Er selam verdi");
  }
}

class Yuzbasi extends Asker {
  @override
  void selamVer() {
    print("Yüzbaşı selam verdi");
  }
}
