import 'oopexample/Ogrenci.dart';

main(List<String> args) {
  var taner = Ogrenci(ad: "taner", ogrId: 55, ogrNot: 45);

  print(taner.ogrId);
  taner.ogrNot = -26;

  taner.toString();
}
