void main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("taner");
  isimler.add("ali");
  isimler.add("akb");
  isimler.add("cjp");
  isimler.add("cjp");
  isimler.add("smcan");
  isimler.add("alicrcan");
  isimler.add("bşiey");

  bool sonuc = isimler.remove("ali");
  print("sonuc : " + sonuc.toString());

  if (isimler.contains("smcan")) {
    print(isimler);
  }
  var say = 1;
  for (String s1 in isimler) {
    print("${say++}. isim : $s1");
  }

  print("isimler set uzunluk: ${isimler.length}");
  print("isimler set type: ${isimler.runtimeType}");
}
