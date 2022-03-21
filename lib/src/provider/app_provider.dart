import 'dart:convert';
import 'package:car_wash/src/http_result/http_result.dart';
import 'package:http/http.dart' as http;

class AppProvider {
  static String baseUrl = 'https://myapi51.pythonanywhere.com/';

  Future<HttpResult> _postRequest(String url, String body) async {
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: {
        'Authorization': 'Token 9f235905266597e791876f1da2ea233b8ad2ec16'
      },
    );
    return _result(response);
  }

  Future<HttpResult> _getRequest(String url) async {
    print(url);
    http.Response response = await http.get(
      Uri.parse(url),
      headers: {
        'Authorization': 'Token 9f235905266597e791876f1da2ea233b8ad2ec16'
      },
    );
    return _result(response);
  }

  HttpResult _result(http.Response response) {
    print(response.statusCode);
    print(response.body);
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return HttpResult(
        isSuccess: true,
        statusCode: response.statusCode,
        result: json.decode(utf8.decode(response.bodyBytes)),
      );
    } else {
      return HttpResult(
        isSuccess: false,
        statusCode: response.statusCode,
        result: response.body,
      );
    }
  }

  Future<HttpResult> getHome() async {
    String url = baseUrl + 'api/home/';
    return await _getRequest(url);
  }

  Future<HttpResult> weather(String url) async {
    String url =
        "https://weatherbit-v1-mashape.p.rapidapi.com/forecast/daily?lat=41.31&lon=69.29";
    print(url);
    http.Response response = await http.get(
      Uri.parse(url),
      headers: {
        'x-rapidapi-host': 'weatherbit-v1-mashape.p.rapidapi.com',
        'x-rapidapi-key': 'd7a48198e5msh18d8ace54ab62cdp114cb2jsn544fd6639893',
      },
    );
    print(response);

    return _result(response);
  }


  Future<HttpResult> getWeather() async {
    String url ="https://weatherbit-v1-mashape.p.rapidapi.com/forecast/daily?lat=41.31&lon=69.29";
    return await weather(url);
  }
}
