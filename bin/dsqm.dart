import 'package:analyzer/dart/analysis/analysis_context.dart';
import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/features.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:dsqm/dsqm.dart' as dsqm;

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

  final visitor = ImportVisitor();
  file.unit.visitChildren(visitor);

  print(visitor.importedUris);
  print(visitor.ifStatesIndex);
}

class ImportVisitor extends RecursiveAstVisitor<void> {
  final List<String> importedUris = [];

  int ifStatesIndex = 0;

  @override
  void visitImportDirective(ImportDirective node) {
    importedUris.add(node.uri.stringValue!);
    return super.visitImportDirective(node);
  }

  @override
  void visitSwitchCase(SwitchCase node) {
    ifStatesIndex++;

    super.visitSwitchCase(node);
  }

  @override
  void visitSwitchPatternCase(SwitchPatternCase node) {
    ifStatesIndex++;
    super.visitSwitchPatternCase(node);
  }

  @override
  void visitIfStatement(IfStatement node) {
    ifStatesIndex++;
    return super.visitIfStatement(node);
  }
}
