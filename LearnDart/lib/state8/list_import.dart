void main(List<String> args) {
  Person taner = Person(3, "Taner");
  Student s1 = Student(2, "S1", 9);
  Person s2 = Student(4, "S2", 7);
  var s3 = Person(7, "s3");
  var s4 = Student(6, "s4", 8);

  List<Person> allStudents = [taner, s1, s2, s3, s4];
  allStudents.add(s4);

  allStudents.sort((student1, student2) {
    if (student1.id > student2.id) {
      return 1;
    } else {
      return 0;
    }
  });

  print(allStudents);

  allStudents.addAll([s2, s3]);
  print("$allStudents");

  bool sonuc = allStudents.any((Person element) => element.id > 10);
  // print(sonuc);

  // * Var olan listemizi map yapısına donusturebiliriz. Geriye int Person olan map donduruyor
  Map<int, Person> newMap = allStudents.asMap();
  // print(newMap);
  // print(newMap[1]!.name);

  // * map methodu ile listemizde karisik olarak bulunan veri turlerimizden sadece name'i donduruyoruz ve boylelikle buyuk bir listeye sahipsek bile isimlerine kolay bir sekilde ulasmis oluyoruz. Var olan bir yapiyi bambaska bir hale donusturuyoruz map yapisi ile
  // ! map fonksiyonu bize iterable sekilde degeri veriyor. Iterable olan fonksiyonumuzu liste halien cevirebiliriz.
  var mapIterable = allStudents.map((e) => "${e.name}").toList();
  mapIterable.add("ali");
  // print(mapIterable);

  var list = List<Student>.filled(5, Student(0, "", 0));
  // * print(list);

  // ! from'da çalışma anında hatayı görüyoruz, kod yazılırken görmüyoruz
  var listFrom = List<Student>.from(allStudents.whereType<Student>());

  // ! List.of'ta ise hatayı çalışma anında fark ediyoruz.
  var listOf = List<Student>.of(allStudents.whereType<Student>());

  // * print(listFrom);
  // * print(listOf);

  var listGenerate = List<int>.generate(5, (index) => index * 2);
  // * print(listGenerate);

  // ! Değiştirilemez listede eleman ekleyip çıkaramayız.
  var unmodifiableList = List.unmodifiable([3, 5, 7, 9, 15]);
  // unmodifiableList.add(8);
  // * print(unmodifiableList);
}

class Person {
  var id = 0;
  String name = "";

  Person(this.id, this.name);

  @override
  String toString() {
    return "id: $id and name: $name";
  }
}

class Student extends Person {
  var lessons = 0;
  Student(id, name, lessons) : super(id, name);

  @override
  String toString() {
    return "Id: $id , name: $name , lessons: $lessons \n";
  }
}
