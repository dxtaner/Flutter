main(List<String> args) {
  print("********************************************");

  double num1 = 30.3;
  double num2 = 31.3;
  double num3 = 37.3;
  print((num1 + num2 + num3) / 3);

  print("********************************************");

  int kenar1 = 5, kenar2 = 6, kenar3 = 7;
  if ((kenar1 == kenar2) && (kenar1 == kenar3)) {
    print("Kenarlarını girdiğiniz üçgen eşkenardır");
  } else if ((kenar1 != kenar2) && (kenar1 != kenar3) && (kenar2 != kenar3)) {
    print("Kenarlarını girdiğiniz üçgen çeşitkenardır");
  } else {
    print("Kenarlarını girdiğiniz üçgen ikizkenardır");
  }

  print("********************************************");

  double vizeNotu = 40;
  double finalNotu = 55;
  double hesaplananNot = 0;
  hesaplananNot = ((vizeNotu * 40) + (finalNotu * 60)) / 100;
  if (hesaplananNot >= 49.2) {
    print("Tebrikler, $hesaplananNot ile bu dersi geçtiniz");
  } else {
    print("Malesef, $hesaplananNot ile bu dersten kaldınız");
  }

  print("********************************************");

  for (int i = 0; i < 4; i++) {
    print("$i.inci döngüde ismim : tanerözer");
  }

  print("********************************************");

  for (int i = 1; i < 100; i++) {
    if ((i % 35 == 0)) {
      print("1 ile 100 arasında 35e tam bölünebilen $i nin karesi =  ${i * i}");
    }
  }

  print("*******************************************");

  var sayi = 4;
  var sonuc = 1;
  for (var i = 1; i <= sayi; i++) {
    sonuc *= i;
  }
  print("girdiğiniz $sayi sayısının faktoriyeli : $sonuc");
}
