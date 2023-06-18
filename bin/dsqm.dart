import 'package:analyzer/dart/analysis/features.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:dsqm/src/metrics/cyclomatic_complexity_visitor.dart';

Future main() async {
  final file = parseFile(
      path: '/Users/nishimuraw/projects/scala-git/dsqm/bin/dsqm.dart',
      featureSet: FeatureSet.latestLanguageVersion());

  if (file.content.isNotEmpty) {
    print('');
  }
  final index = 0;

  switch(index) {
    case 1 :
      print('-');
    case 0 :
      print('-');
    case 3:
      print('-');
    default:
      print('-');
  }

  final visitor = CyclomaticComplexityVisitor();
  file.unit.visitChildren(visitor);

  print(visitor.complexityEntities.length);
}
