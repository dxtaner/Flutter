main(List<String> args) {
  String name = "taner";
  String surName = "özer";
  var age = 25;

  print("Benim ismim $name $surName, yaşım $age ve" +
      "tüm ismimdeki karakter sayısı ${name.length + surName.length}'tür.");
  print("Benim ismim $name $surName, yaşım $age ve tüm ismimdeki" +
      " karakter sayısı ${(name + surName).length}'tür.");

  var birinciKenar = 3;
  var ikinciKenar = 4;
  var ucuncuKenar = 5;
  print(
      "Birinci kenarı $birinciKenar, ikinci kenarı $ikinciKenar, üçüncü kenarı $ucuncuKenar olan üçgenin çevresi ${(birinciKenar + ikinciKenar + ucuncuKenar)}'dir ");
}
