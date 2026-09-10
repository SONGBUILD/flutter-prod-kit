class AppEnv {
  const AppEnv({required this.name, required this.apiBase});
  final String name;
  final String apiBase;

  static AppEnv current = fromDefine();

  static AppEnv fromDefine() {
    const env = String.fromEnvironment('ENV', defaultValue: 'dev');
    if (env == 'prod') {
      return const AppEnv(name: 'prod', apiBase: 'https://api.example.com');
    }
    return const AppEnv(name: 'dev', apiBase: 'http://localhost:3000');
  }
}
