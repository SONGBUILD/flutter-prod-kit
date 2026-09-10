import 'result.dart';

typedef Get = Future<String> Function(Uri uri);

class ApiClient {
  ApiClient({required this.baseUrl, required this.get});
  final String baseUrl;
  final Get get;

  Future<Result<String>> ping() async {
    try {
      final body = await get(Uri.parse('$baseUrl/health'));
      return Result.ok(body);
    } catch (e) {
      return Result.err(e);
    }
  }
}
