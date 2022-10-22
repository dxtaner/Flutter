main(List<String> args) {
  var sayi1 = -55;
  var sayi2 = 4;
  var kucukSayi;

  sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2;
  print("Küçük : $kucukSayi");

  kucukSayi = (sayi1 < sayi2) ? sayi1 : sayi2;
  print("küçük : $kucukSayi");

  String name = "taner";
  String surName = "ozer";
  String mesaj;

  mesaj = name ?? surName;

  print("Merhaba $mesaj");
}
