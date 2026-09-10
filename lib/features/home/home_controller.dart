import '../../core/api_client.dart';
import '../../core/result.dart';
import 'home_state.dart';

class HomeController {
  HomeController(this.api);
  final ApiClient api;
  HomeState state = const HomeState();

  Future<void> load() async {
    final ping = await retry(() async {
      final r = await api.ping();
      if (!r.isOk) throw r.error!;
      return r.value!;
    });
    if (ping.isOk) {
      state = HomeState(headline: 'API ok');
    } else {
      state = const HomeState(headline: 'API offline');
    }
  }
}
