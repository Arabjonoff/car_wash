import 'package:car_wash/src/http_result/http_result.dart';
import 'package:car_wash/src/model/home_model.dart';
import 'package:car_wash/src/provider/repository.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc {
  final Repository _repository = Repository();

  final _homeInfo = PublishSubject<HomeModel>();

  Stream<HomeModel> get getHomeInfo => _homeInfo.stream;

  getHome() async {
    HttpResult response = await _repository.getHome();
    if (response.isSuccess) {
      HomeModel homeModel = HomeModel.fromJson(response.result);
      _homeInfo.sink.add(homeModel);
    }
  }
}

final homeBloc = HomeBloc();
