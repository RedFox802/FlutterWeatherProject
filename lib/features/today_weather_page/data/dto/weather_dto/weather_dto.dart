import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_dto.g.dart';

@JsonSerializable()
class WeatherDTO {
  String? main;
  String? description;

  WeatherDTO({
    this.description,
    this.main,
  });

  factory WeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherDTOFromJson(json);
}
