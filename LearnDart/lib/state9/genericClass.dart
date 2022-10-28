void main(List<String> args) {
  Mystack mystack = Mystack();
  mystack.push("yeniEleman");
  mystack.pop();
}

class Mystack {
  List _listem = [];

  push(yeniEleman) {
    _listem.add(yeniEleman);
  }

  pop() {
    return _listem.removeLast();
  }
}
