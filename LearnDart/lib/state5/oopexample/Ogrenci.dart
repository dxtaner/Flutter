class Ogrenci {
  int ogrId, ogrNot;
  var ad;

  Ogrenci({this.ogrId = 0, this.ogrNot = 0, this.ad});

  @override
  String toString() {
    return "ID: $ogrId Not Değeri: $ogrNot ad: $ad";
  }
}
