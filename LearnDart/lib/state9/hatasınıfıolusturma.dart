void main(List<String> args) {
  // hata yakalama
  try {
    Car car1 = Car(1);
    print(car1);
  } on WheelsException catch (e) {
    print(e.message);
  }
}

class WheelsException implements Exception {
  String message;

  WheelsException({this.message = "WheelsException"});

  @override
  String toString() {
    return "Hatanın toString methodu çalıştı";
  }
}

class Car {
  var wheels;
  Car(this.wheels) {
    if (wheels < 2) {
      throw WheelsException(
          message: "WheelsException: Tekerler degeri 2'dan küçük olamaz");
    } else {
      print("perfectly");
    }
  }
}
