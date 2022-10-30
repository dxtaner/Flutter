void main(List<String> args) {
  print("Father sends the child to buy cheese");
  buyBread();
  print("Money is prepared");
  print("Money is ready!");
}

void buyBread() {
  print("The child leaves the house to buy cheese");

  // isimlendirilmis constructor 8 saniye sonra fonksiyon döner
  Future.delayed(Duration(seconds: 8), () {
    print("Child enters home with cheese");
  });
}
