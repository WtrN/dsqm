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
}
