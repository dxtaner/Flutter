void main(List<String> args) {
  var Listem = [];
  var myMap = <String, dynamic>{'yas': 25};
  var mySet = <String>{'taner', 'irem'};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  //spreads operator
  var sonListe = [...tekSayilar, ...ciftSayilar];

  var map1 = {'ad': 'taner'};
  var map2 = {'yas': '28'};
  var sonMap = {...map1, ...map2};

  var set1 = {"taner"};
  var set2 = ["irem"];
  var set3 = {"rüya"};
  var set4 = {"dila"};

  var sonSetYapisi = {...set1, ...set2, ...set3, ...set4};

  print(sonListe);
  print(sonMap);
  print(sonSetYapisi);
}
