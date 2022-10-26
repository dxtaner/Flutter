import 'dart:math';

main(List<String> args) {
  var kopek1 = Kopek();
  kopek1.renk = "siyah";
  kopek1.cins = "labrador";
  print("renk: ${kopek1.renk}");
  kopek1.yemekYe();
  kopek1.havla();
  print("id: ${kopek1.id}");

  var kedi1 = Kedi();
  // kedi1.renk="beyaz";
  kedi1.yas = 2;
  print("renk: ${kedi1.renk}");
  kedi1.yemekYe();
  kedi1.miyavla();
}

class Hayvan extends Object {
  String renk = "sari";
  int id = 1;
  void yemekYe() {
    print("Hayvan yemek yiyor");
  }
}

class Kedi extends Hayvan {
  int? yas;

  void miyavla() {
    print("Miyaaaaavvvvv");
  }

  @override
  void yemekYe() {
    print("Kedi yemek yiyor");
  }
}

class Kopek extends Hayvan {
  String? cins;

  void havla() {
    print("Hav hav");
  }

  @override
  void yemekYe() {
    print("Kopek yemek yiyor");
  }
}
