import 'package:car_wash/src/http_result/http_result.dart';
import 'package:car_wash/src/model/home_model.dart';
import 'package:car_wash/src/model/weather_model.dart';
import 'package:car_wash/src/provider/repository.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc {

  ///`d3ea0ebe47e6ee5a55b91130c56ddc8c`
  final Repository _repository = Repository();

getTime(){
  String _timeHour =
      "${Utils.numberFormat(DateTime.now().hour)} : ${Utils.numberFormat(DateTime.now().minute)} : ${Utils.numberFormat(DateTime.now().second)}",
      _timerDate =
          "${Utils.numberFormat(DateTime.now().day)}.${Utils.numberFormat(DateTime.now().month)}.${Utils.numberFormat(DateTime.now().year)}";

}

  final _homeInfo = PublishSubject<HomeModel>();
  final _weatherInfo = PublishSubject<WeatherModel>();

  Stream<HomeModel> get getHomeInfo => _homeInfo.stream;
  Stream<WeatherModel> get getWeatherInfo => _weatherInfo.stream;

  getHome() async {
    HttpResult response = await _repository.getHome();
    if (response.isSuccess) {
      HomeModel homeModel = HomeModel.fromJson(response.result);
      _homeInfo.sink.add(homeModel);
    }
  }
  getWeather() async {
    HttpResult response = await _repository.getWeather();
    if (response.isSuccess) {
      WeatherModel weatherModel = WeatherModel.fromJson(response.result);
      _weatherInfo.sink.add(weatherModel);
    }
  }
}

final homeBloc = HomeBloc();
