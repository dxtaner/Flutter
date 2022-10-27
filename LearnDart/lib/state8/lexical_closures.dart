/**
 * Closure özel bir fonksiyondur, closure ile bir üst kapsamdaki değişkenlerin değerlerini değiştirebiliriz.
 */
main(List<String> args) {
  String isim = "Taner";

  Function ismimiGoster = () {
    isim = "Ens özer";
    print(isim);
  };

  ismimiGoster();

  Function konus = () {
    String selam = "Merhaba";

    Function soyle = () {
      selam = "Selamün Aleyküm";
      print(selam);
    };

    return soyle;
  };

  var fonksiyonuAl = konus();

  fonksiyonuAl();
}
