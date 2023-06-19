Future main() async {
  final ifStatementString = 'hoge';

  if (ifStatementString.isNotEmpty) {
    print(ifStatementString);
  }
  final index = 0;

  switch (index) {
    case 1:
      print('-');
    case 0:
      print('-');
    case 3:
      print('-');
    default:
      print('-');
  }

  final switchPattern = BaseTestClass.create();

  final patternMatchFunction = switch (switchPattern) {
    HogeClass(value: var l) => l,
    FugaClass(value: var f) => f,
  };

  print(patternMatchFunction);
}

sealed class BaseTestClass {
  const BaseTestClass(this.value);

  factory BaseTestClass.create() {
    return HogeClass(1);
  }

  final int value;
}

class HogeClass implements BaseTestClass {
  const HogeClass(this.value);

  @override
  final int value;
}

class FugaClass implements BaseTestClass {
  const FugaClass(this.value);

  @override
  final int value;
}
