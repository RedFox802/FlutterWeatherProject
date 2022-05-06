import 'dart:developer';

class WeatherList {
  double? lat;
  double? lon;
  String? timezone;
  int? timezoneOffset;
  List<Daily>? daily;

  WeatherList(
      {this.lat, this.lon, this.timezone, this.timezoneOffset, this.daily});

  WeatherList.fromJson(Map<String, dynamic> json) {
    try {
      lat = json['lat'] ?? 0;
      lon = json['lon'] ?? 0;
      timezone = json['timezone'] ?? '';
      timezoneOffset = json['timezone_offset'] ?? 0;
      if (json['daily'] != null) {
        daily = <Daily>[];
        json['daily'].forEach((v) {
          daily!.add(Daily.fromJson(v));
        });
      }
    }
    catch(e){
      log('${e}');
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['lat'] = lat;
    data['lon'] = lon;
    data['timezone'] = timezone;
    data['timezone_offset'] = timezoneOffset;
    if (daily != null) {
      data['daily'] = daily!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Daily {
  int? dt;
  int? sunrise;
  int? sunset;
  int? moonrise;
  int? moonset;
  double? moonPhase;
  Temp? temp;
  FeelsLike? feelsLike;
  int? pressure;
  int? humidity;
  double? dewPoint;
  double? windSpeed;
  int? windDeg;
  double? windGust;
  List<Weather>? weather;
  int? clouds;
  double? pop;
  double? uvi;
  double? rain;

  Daily(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      this.moonPhase,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPoint,
      this.windSpeed,
      this.windDeg,
      this.windGust,
      this.weather,
      this.clouds,
      this.pop,
      this.uvi,
      this.rain});

  Daily.fromJson(Map<String, dynamic> json) {
    try{
    dt = json['dt'] ?? 0;
    sunrise = json['sunrise'] ?? 0;
    sunset = json['sunset'] ?? 0;
    moonrise = json['moonrise'] ?? 0;
    moonset = json['moonset'] ?? 0;
    moonPhase = json['moon_phase'] ?? 0;
    temp = json['temp'] != null ? Temp.fromJson(json['temp']) : Temp();
    feelsLike = json['feels_like'] != null
        ? FeelsLike.fromJson(json['feels_like'])
        : FeelsLike();
    pressure = json['pressure']?? 0;
    humidity = json['humidity']?? 0;
    dewPoint = json['dew_point']?? 0;
    windSpeed = json['wind_speed']?? 0;
    windDeg = json['wind_deg']?? 0;
    windGust = json['wind_gust']?? 0;
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(new Weather.fromJson(v));
      });
    }
    clouds = json['clouds']?? 0;
    pop = json['pop']?? 0;
    uvi = json['uvi']?? 0;
    rain = json['rain']?? 0;
    }
    catch(e){
      log('${e}');
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['dt'] = dt;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    data['moonrise'] = moonrise;
    data['moonset'] = moonset;
    data['moon_phase'] = moonPhase;
    if (temp != null) {
      data['temp'] = temp!.toJson();
    }
    if (feelsLike != null) {
      data['feels_like'] = feelsLike!.toJson();
    }
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    data['dew_point'] = dewPoint;
    data['wind_speed'] = windSpeed;
    data['wind_deg'] = windDeg;
    data['wind_gust'] = windGust;
    if (weather != null) {
      data['weather'] = weather!.map((v) => v.toJson()).toList();
    }
    data['clouds'] = clouds;
    data['pop'] = pop;
    data['uvi'] = uvi;
    data['rain'] = rain;
    return data;
  }
}

class Temp {
  double? day;
  double? min;
  double? max;
  double? night;
  double? eve;
  double? morn;

  Temp({this.day, this.min, this.max, this.night, this.eve, this.morn});

  Temp.fromJson(Map<String, dynamic> json) {
    try{
    day = json['day']?? 0;
    min = json['min']?? 0;
    max = json['max']?? 0;
    night = json['night']?? 0;
    eve = json['eve']?? 0;
    morn = json['morn']?? 0;
    }
    catch(e){
      log('${e}');
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['day'] = day;
    data['min'] = min;
    data['max'] = max;
    data['night'] = night;
    data['eve'] = eve;
    data['morn'] = morn;
    return data;
  }
}

class FeelsLike {
  double? day;
  double? night;
  double? eve;
  double? morn;

  FeelsLike({this.day, this.night, this.eve, this.morn});

  FeelsLike.fromJson(Map<String, dynamic> json) {
    try{
    day = json['day']?? 0;
    night = json['night']?? 0;
    eve = json['eve']?? 0;
    morn = json['morn']?? 0;
    }
    catch(e){
      log('${e}');
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['day'] = day;
    data['night'] = night;
    data['eve'] = eve;
    data['morn'] = morn;
    return data;
  }
}

class Weather {
  int? id;
  String? main;
  String? description;
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    try{
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
    }
    catch(e){
      log('${e}');
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['main'] = this.main;
    data['description'] = this.description;
    data['icon'] = this.icon;
    return data;
  }
}
