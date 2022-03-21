class WeatherModel {
  WeatherModel({
    required this.results,
    required this.cityName,
    required this.countryCode,
  });

  List<WeatherData> results;
  String cityName;
  String countryCode;

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
    results: json["data"] == null
            ? <WeatherData>[]
            : List<WeatherData>.from(json["data"].map((x) => WeatherData.fromJson(x))),
        cityName: json["city_name"] ?? "",
        countryCode: json["country_code"] ?? "",
      );
}

class WeatherData {
  WeatherData({
    required this.moonriseTs,
    required this.windCdir,
    required this.rh,
    required this.pres,
    required this.highTemp,
    required this.sunsetTs,
    required this.ozone,
    required this.moonPhase,
    required this.windGustSpd,
    required this.snowDepth,
    required this.clouds,
    required this.ts,
    required this.sunriseTs,
    required this.appMinTemp,
    required this.windSpd,
    required this.pop,
    required this.windCdirFull,
    required this.slp,
    required this.moonPhaseLunation,
    required this.validDate,
    required this.appMaxTemp,
    required this.vis,
    required this.dewpt,
    required this.snow,
    required this.uv,
    required this.weather,
    required this.windDir,
    required this.cloudsHi,
    required this.precip,
    required this.lowTemp,
    required this.maxTemp,
    required this.moonsetTs,
    required this.datetime,
    required this.temp,
    required this.minTemp,
    required this.cloudsMid,
    required this.cloudsLow,
  });

  int moonriseTs;
  String windCdir;
  int rh;
  double pres;
  double highTemp;
  int sunsetTs;
  double ozone;
  double moonPhase;
  double windGustSpd;
  double snowDepth;
  int clouds;
  int ts;
  int sunriseTs;
  double appMinTemp;
  double windSpd;
  int pop;
  String windCdirFull;
  double slp;
  double moonPhaseLunation;
  DateTime validDate;
  double appMaxTemp;
  double vis;
  double dewpt;
  int snow;
  double uv;
  Weather weather;
  int windDir;
  int cloudsHi;
  double precip;
  double lowTemp;
  double maxTemp;
  int moonsetTs;
  DateTime datetime;
  double temp;
  double minTemp;
  int cloudsMid;
  int cloudsLow;

  factory WeatherData.fromJson(Map<String, dynamic> json) => WeatherData(
        moonriseTs: json["moonrise_ts"] ?? 0,
        windCdir: json["wind_cdir"] ?? '',
        rh: json["rh"] ?? 0,
        pres: json["pres"].toDouble() ?? 0.0,
        highTemp: json["high_temp"].toDouble()?? 0.0,
        sunsetTs: json["sunset_ts"]?? 0,
        ozone: json["ozone"].toDouble()?? 0.0,
        moonPhase: json["moon_phase"].toDouble()??0.0,
        windGustSpd: json["wind_gust_spd"].toDouble()??0.0,
        snowDepth: json["snow_depth"].toDouble()??0.0,
        clouds: json["clouds"]??0,
        ts: json["ts"]??0,
        sunriseTs: json["sunrise_ts"]??0,
        appMinTemp: json["app_min_temp"].toDouble()??0.0,
        windSpd: json["wind_spd"].toDouble()??0.0,
        pop: json["pop"]??0,
        windCdirFull: json["wind_cdir_full"]??0,
        slp: json["slp"].toDouble()??0.0,
        moonPhaseLunation: json["moon_phase_lunation"].toDouble()??0.0,
        validDate: json["valid_date"] == null ?DateTime.now():DateTime.parse(json["valid_date"]),
        appMaxTemp: json["app_max_temp"].toDouble()??0.0,
        vis: json["vis"].toDouble()??0.0,
        dewpt: json["dewpt"].toDouble()??0.0,
        snow: json["snow"]??0,
        uv: json["uv"].toDouble()??0.0,
        weather: json["weather"] == null
            ? Weather.fromJson({})
            : Weather.fromJson(json["weather"]),
        windDir: json["wind_dir"]??0,
        cloudsHi: json["clouds_hi"]??0,
        precip: json["precip"].toDouble()??0.0,
        lowTemp: json["low_temp"].toDouble()??0.0,
        maxTemp: json["max_temp"].toDouble()??0.0,
        moonsetTs: json["moonset_ts"]??0,
        datetime: json["datetime"] == null ?DateTime.now():DateTime.parse(json["datetime"]),
        temp: json["temp"].toDouble()??0.0,
        minTemp: json["min_temp"].toDouble()??0.0,
        cloudsMid: json["clouds_mid"]??0,
        cloudsLow: json["clouds_low"]??0,
      );
}

class Weather {
  Weather({
    required this.icon,
    required this.code,
    required this.description,
  });

  String icon;
  int code;
  String description;

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        icon: json["icon"] ?? "",
        code: json["code"] ?? 0,
        description: json["description"] ?? "",
      );
}
