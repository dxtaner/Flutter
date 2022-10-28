import 'dart:math';

void main(List<String> args) {
  try {
    double deger = karakokunuAl(-7);
    double deger2 = karakokunuAl(7);
    // noktadan sonra 2 hane göstermesi
    print("Sonuç: ${deger2.toStringAsFixed(2)}");
    print("Sonuç: ${deger.toStringAsFixed(2)}");
  } catch (e) {
    print(e);
  }
}

double karakokunuAl(int i) {
  if (i < 0) {
    throw FormatException("Sayı negatif olamaz");
  } else {
    return sqrt(i);
  }
}
