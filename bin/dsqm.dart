import 'dart:io';

import 'package:analyzer/dart/analysis/features.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:dsqm/src/metrics/cyclomatic/cyclomatic_complexity_result.dart';
import 'package:dsqm/src/metrics/cyclomatic/cyclomatic_complexity_visitor.dart';
import 'package:path/path.dart';

Future main() async {
  final current = Directory.current.absolute.path;
  final absoluteDirPath = join(current, 'example/target.dart');
  final file = parseFile(
      path: absoluteDirPath,
      featureSet: FeatureSet.latestLanguageVersion());

  final visitor = CyclomaticComplexityVisitor();
  file.unit.visitChildren(visitor);

  final result = CyclomaticComplexityResult(visitor);

  print('Result: ${result.metricsValue}');
}
