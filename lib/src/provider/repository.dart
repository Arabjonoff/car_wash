import 'package:car_wash/src/http_result/http_result.dart';
import 'package:car_wash/src/provider/app_provider.dart';

class Repository {
  final AppProvider _provider = AppProvider();

  Future<HttpResult> getHome() => _provider.getHome();
  Future<HttpResult> getWeather() => _provider.getWeather();
}
