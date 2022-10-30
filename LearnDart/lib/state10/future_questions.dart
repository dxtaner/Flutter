String firstCourse = '';

void main(List<String> args) {
  userById(2).then((value) {
    print(value);

    courseByUser('taner').then((courseList) {
      print(courseList);

      firstCourse = courseList[0];
      firstCommentByCourse(firstCourse).then((value) => print(value));
    });
  });
}

Future<String> firstCommentByCourse(String courseName) {
  print("$firstCourse için yapılan ilk yorum getiriliyor..");
  return Future.delayed(Duration(seconds: 1), () {
    return 'Kurs güzel';
  });
}

Future<List<String>> courseByUser(String username) {
  print('$username kullanicisinin kurslari getiriliyor.');

  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['Dart & Flutter Kursu', 'Dart Kursu'];
  });
}

Future<Map<String, dynamic>> userById(int id) {
  print('$id idli kullanici getiriliyor.');

  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'taner ozer', 'id': id};
  });
}
