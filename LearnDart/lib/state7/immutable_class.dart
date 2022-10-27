void main(List<String> args) {
  /*
   * Constructor'ımızı const olarak tanımladıktan sonra oluşturmuş olduğumuz class'tan obje oluşturduğumuzda bunların eşit olduğunu görürüz. const değerini kullanmasaydık "not equal" değeri dönecekti.
   ! Oluşturmuş olduğumuz objeler bellekte farklı yerleri değil, aynı yeri gösterir. 
   * immutable data in dart diyerek bir çok kaynağa erişebiliriz.
   */
  const Student taner = Student(5, "Taner");
  const Student taner2 = Student(2, "Taner");
  // taner.id = 10; // * final olarak oluşturduğumuzdan değerini değiştiremiyoruz

  if (taner == taner2) {
    print("Equal");
  } else {
    print("Not equal");
  }
}

class Student {
  final int id;
  final String name;

  const Student(this.id, this.name);
}
