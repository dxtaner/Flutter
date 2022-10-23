import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("----------------------------------------");

  List<String> sehirler = List.filled(5, "fill");
  sehirler[0] = "ankara";
  sehirler[1] = "istanbul";
  sehirler[2] = "izmir";
  sehirler[3] = "bursa";

  for (int i = 0; i < sehirler.length; i++) {
    print(sehirler[i]);
  }

  print("----------------------------------------");

  Map<String, dynamic> bilgi = {};
  bilgi["cekirdeksayisi"] = 4;
  bilgi["ram"] = 8;
  bilgi["ssdIs"] = true;

  print("Bilgisayar bilgileri:");
  for (var keyu in bilgi.entries) {
    print(" ${keyu.key} : ${keyu.value}");
  }

  print("-----------------------------------------");

  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[];
  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1["il"] = "ankara";
  eklenecekSehir1["ilce"] = "10";
  eklenecekSehir1["plaka"] = "06";
  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  eklenecekSehir2["il"] = "bursa";
  eklenecekSehir2["ilce"] = "7";
  eklenecekSehir2["plaka"] = "16";
  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3["il"] = "Mus";
  eklenecekSehir3["ilce"] = "5";
  eklenecekSehir3["plak"] = "74";

  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);

  iller.add({"il": "izmir", "ilce": 9, "plaka": 35});

  for (int i = 0; i < iller.length; i++) {
    var anahtar = iller[i];
    print("Listenin ${i + 1}. elemanında bulunan sehir adı: ${anahtar["il"]}" +
        " ilce sayısı: ${anahtar["ilce"]} plaka kodu: ${anahtar["plaka"]}");
  }

  print("--------------------------------------");

  List<int> liste1 = List.filled(5, 0);
  List<int> liste2 = List.filled(5, 0);
  Set<int> sonListe = Set();
  for (int i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }
  print(liste1);
  print(liste2);

  for (var i = 0; i < liste1.length; i++) {
    sonListe.add(liste1[i] * liste1[i]);
  }

  for (var i = 0; i < liste2.length; i++) {
    sonListe.add(liste2[i] * liste2[i]);
  }

  print(sonListe);
  print(sonListe.length);

  print("-----------------------------------------");

  int sayi = 0;
  List<int> list = [];
  while (true) {
    print("Bir sayı giriniz: ");
    sayi = int.parse(stdin.readLineSync()!);
    if (sayi == 0) {
      int toplam = 0;
      double sonuc;

      for (var i = 0; i < list.length; i++) {
        toplam += list[i];
      }

      sonuc = toplam.toDouble() / list.length;
      print(sonuc);
      break;
    } else {
      list.add(sayi);
    }
  }
}
