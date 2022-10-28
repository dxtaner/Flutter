import 'dart:async';

void main(List<String> args) {
  List liste = [];
  liste.add("taner");
  liste.add("alibaba");

  yazdir(liste);
}

yazdir(List list) {
  print(list[1].length);
  print(list[0].length);
}
