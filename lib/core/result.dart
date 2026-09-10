class Result<T> {
  const Result._(this.value, this.error);
  final T? value;
  final Object? error;
  bool get isOk => error == null;
  static Result<T> ok<T>(T value) => Result._(value, null);
  static Result<T> err<T>(Object error) => Result._(null, error);
}
