import 'dart:developer';

class WeatherList {
  double? lat;
  double? lon;
  String? timezone;
  int? timezoneOffset;
  List<Daily>? daily;

  WeatherList({
    this.lat,
    this.lon,
    this.timezone,
    this.timezoneOffset,
    this.daily,
  });

  WeatherList.fromJson(Map<String, dynamic> json) {
    try {
      lat = json['lat'];
      lon = json['lon'];
      timezone = json['timezone'];
      timezoneOffset = json['timezone_offset'];
      if (json['daily'] != null) {
        daily = <Daily>[];
        json['daily'].forEach((v) {
          daily!.add(Daily.fromJson(v));
        });
      }
    } catch (e) {
      log(" В везерлисте ${e}");
    }
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
  double? windDeg;
  double? windGust;
  List<Weather>? weather;
  double? clouds;
  double? pop;
  double? rain;
  double? uvi;

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
      this.rain,
      this.uvi});

  Daily.fromJson(Map<String, dynamic> json) {
    try {
      dt = json['dt'];
      sunrise = json['sunrise'];
      sunset = json['sunset'];
      moonrise = json['moonrise'];
      moonset = json['moonset'];
      moonPhase = json['moon_phase'];
      temp = json['temp'] != null ? Temp.fromJson(json['temp']) : null;
      feelsLike = json['feels_like'] != null
          ? FeelsLike.fromJson(json['feels_like'])
          : null;
      pressure = json['pressure'];
      humidity = json['humidity'];
      dewPoint = json['dew_point'];
      windSpeed = json['wind_speed'];
      windDeg = json['wind_deg'];
      windGust = json['wind_gust'];
      if (json['weather'] != null) {
        weather = <Weather>[];
        json['weather'].forEach((v) {
          weather!.add(Weather.fromJson(v));
        });
      }
      log("Почти все");
      clouds = json['clouds'];
      pop = json['pop'];
      rain = json['rain'];
      uvi = json['uvi'];
    } catch (e) {
      log(" В дайли ${e}");
    }
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
    try {
      day = json['day'];
      min = json['min'];
      max = json['max'];
      night = json['night'];
      eve = json['eve'];
      morn = json['morn'];
    } catch (e) {
      log("В темпе ${e}");
    }
  }
}

class FeelsLike {
  double? day;
  double? night;
  double? eve;
  double? morn;

  FeelsLike({this.day, this.night, this.eve, this.morn});

  FeelsLike.fromJson(Map<String, dynamic> json) {
    try {
      day = json['day'];
      night = json['night'];
      eve = json['eve'];
      morn = json['morn'];
    } catch (e) {
      log("В филлайке ${e}");
    }
  }
}

class Weather {
  int? id;
  String? main;
  String? description;
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    try {
      id = json['id'];
      main = json['main'];
      description = json['description'];
      icon = json['icon'];
    } catch (e) {
      log("В везере ${e}");
    }
  }
}
