main(List<String> args) {
  int sayi1 = 10;
  num sayi2 = 9;
  //var sayi3 = 6;

  if (sayi1 > sayi2) {
    print("$sayi1 sayısı $sayi2 sayısından büyüktür");
  } else {
    print("$sayi1 sayısı $sayi2 sayısından küçüktür");
  }

  print("------------------------------------------");

  if (sayi1 < sayi2) {
    print("$sayi1 sayısı $sayi2 sayısından küçüktür");
  } else if (sayi2 < sayi1) {
    print("$sayi2 sayısı $sayi1 sayısından küçüktür");
  } else {
    print("Verdiğiniz sayılar eşittir");
  }

  print("-----------------------------------------------");

  int note = 88;

  if (note >= 90 && note <= 100) {
    print("Notunuz : AA");
  } else if (note >= 80 && note < 90) {
    print("Notunuz : BA");
  } else if (note >= 70 && note < 80) {
    print("Notunuz : BB");
  } else if (note >= 60 && note < 70) {
    print("Notunuz : CB");
  } else if (note >= 50 && note < 60) {
    print("Notunuz : CC");
  } else if (note >= 0 && note < 50) {
    print("Notunuz çok düşük yazmaya tenezzül bile etmedik");
  } else {
    print("Hatalı veya eksik giriş");
  }

  print("-----------------------------------------");

  var number = 44;
  if (number % 15 == 0) {
    print("fizzbuzz " + number.toString());
  } else if (number % 5 == 0) {
    print("fizz " + number.toString());
  } else if (number % 3 == 0) {
    print("buzz " + number.toString());
  } else {
    print("Nothing");
  }
}
