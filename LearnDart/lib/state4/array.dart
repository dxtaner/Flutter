void main(List<String> args) {
  int sayi = 4;
  List<int> sayilar = List.filled(5, 2, growable: false);
  sayilar[0] = 14;
  sayilar[1] = 21;
  sayilar[2] = 92;

  print("sayilar: $sayilar");
  print(sayilar.length);
  print(sayilar[2]);

  List<String> isimler = List.filled(2, "");
  isimler[0] = 5.toString();
  isimler[1] = "taner";

  print(isimler);

  List karisik = List.filled(5, 0);
  karisik[0] = "sarki";
  karisik[1] = 5;
  karisik[2] = false;
  karisik[4] = "false";

  print(karisik);

  //liste elemanlarını gezmek

  for (int i = 0; i < karisik.length; i++) {
    print(karisik[i]);
  }
}
