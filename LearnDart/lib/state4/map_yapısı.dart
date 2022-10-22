void main(List<String> args) {
  Map<String, int> alanKodlari = {"ankara": 312, "bursa": 224, "istanbul": 212};

  // print(alanKodlari);
  // print(alanKodlari["bursa"]);

  Map<String, dynamic> taner = {
    "soyad": "ozer",
    "yas": "25",
    "bekarMi": "true"
  };

  for (String key in taner.keys) {
    // print("key: $key");
    // print("$taner[$key]");
  }

  print(taner["bekarMi"]);

  for (dynamic deger in taner.values) {
    print(deger);
  }

  for (var element in taner.entries) {
    print("Key :${element.key} degeri : ${element.value}");
  }
  if (taner.containsKey(("yas"))) {
    print("Bulunan yas değeri:${taner['yas']}");
  }
  if (taner.containsKey(("bekarMi"))) {
    print("Bulunan bekarMi değeri:${taner['bekarMi']}");
  }
}
