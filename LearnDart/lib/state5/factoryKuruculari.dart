void main(List<String> args) {
  Ogrenci taner = Ogrenci(5, "Taner");
  Ogrenci sem = Ogrenci.idSiz("Sem");
  Ogrenci silgi = Ogrenci.facKurucu(-5, "silgi");
  print(sem.id);
  print(sem.isim);
  print(taner.isim);
  print(taner.id);
  print(silgi.id);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Çalıştı");
  }

  Ogrenci.idSiz(this.isim) {
    print("İsimlendirilmiş kurucu çalıştı");
  }

  // factory sayesinde return kullanabiliriz ama onun dışında contructorda return edemeyiz
  factory Ogrenci.facKurucu(int id, String isim) {
    if (id <= 0) {
      return Ogrenci(999, isim);
    } else {
      return Ogrenci(id, isim);
    }
  }
}
