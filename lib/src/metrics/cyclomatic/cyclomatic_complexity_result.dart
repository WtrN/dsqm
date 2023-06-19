import 'package:dsqm/src/metrics/cyclomatic/cyclomatic_complexity_visitor.dart';
import 'package:dsqm/src/result/base_result.dart';

class CyclomaticComplexityResult implements BaseResult<int> {
  CyclomaticComplexityResult._({
    required this.metricsValue,
  });

  factory CyclomaticComplexityResult(CyclomaticComplexityVisitor visitor) {
    return CyclomaticComplexityResult._(
      metricsValue: visitor.complexityEntities.length + 1,
    );
  }

  @override
  final int metricsValue;
}
