class Result<T> {
  const Result._(this.value, this.error);
  final T? value;
  final Object? error;
  bool get isOk => error == null;
  static Result<T> ok<T>(T value) => Result._(value, null);
  static Result<T> err<T>(Object error) => Result._(null, error);
}

Future<Result<T>> retry<T>(
  Future<T> Function() fn, {
  int times = 2,
}) async {
  Object? last;
  for (var i = 0; i < times; i++) {
    try {
      return Result.ok(await fn());
    } catch (e) {
      last = e;
    }
  }
  return Result.err(last ?? Exception('retry failed'));
}
