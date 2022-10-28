void main(List<String> args) {
  print("Program basladi");

  try {
    int number = 100 ~/ int.parse('0');
    print(number);
  } on IntegerDivisionByZeroException {
    print("Bölen değer 0 olamaz");
  } on FormatException catch (e) {
    print(e.message);
    print(e.source);
  } catch (e) {
    print("Hata çıktı: $e");
  } finally {
    print("Program bitti");
  }
}
