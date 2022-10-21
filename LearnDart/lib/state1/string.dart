main(List<String> args) {
  String name = 'taner';
  String surName = "özer";
  String course = 'Dart\'ın Kullanımı';
  String courseDesc = "Dart'ı ve Flutter'ı Öğreneceğiz";

  print(name + " " + surName);
  print("Interpolation : $name $surName");
  print("Benim adımda olan karakter sayisi ${name.length}");
  print("Benim soyadımda olan karakter sayisi ${surName.length}");

  print("Benim soyadımda olan karakter sayisiBenim soyadımda olan karakter sayisiBenim soyadımda olan karakter sayisiBenim soyadımda olan karakter sayisi" +
      "Benim soyadımda olan karakter sayisiBenim soyadımda olan karakter sayisi");

  int sayi1 = 40;
  double sayi2 = 43.55;
  print("birinci sayi : " +
      sayi1.toString() +
      " ikinci sayi :" +
      sayi2.toString());
  print("birinci sayi: $sayi1 ikinci sayi: $sayi2");

  double boy = 12;
  double yukseklik = 5;
  print("Boyu $boy ve $yukseklik olan üçgen alanı : ${(boy * yukseklik) / 2}");
}
