abstract class BaseResult<T> {
  const BaseResult({
    required this.metricsValue,
  });

  final T metricsValue;
}
