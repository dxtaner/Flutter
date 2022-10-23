void main(List<String> args) {
  List<int> sayilar = [1, 2, 3, 4, 5];

  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  }

  print("Boş mu :" + sayilar.isEmpty.toString());
  print("Eleman sayısı:  ${sayilar.length}");
  print("Ters sıralama ${sayilar.reversed}");

  sayilar.add(31);
  print(sayilar);
  sayilar.remove(2); //verilen sayıyı siler
  print(sayilar);
  sayilar.removeAt(1); //verilen indexteki elemanı siler
  print(sayilar);

  //sayilar.clear():tüm sayıları temizler

  if (sayilar.contains(31)) {
    print("Listede 31 var");
  } else {
    print("Listede 31 yok");
  }

  sayilar.shuffle(); //sayıların rastgele yerlerini değiştiriyor
  print(sayilar);
}
