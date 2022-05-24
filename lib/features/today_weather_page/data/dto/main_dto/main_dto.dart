import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_dto.g.dart';

@JsonSerializable()
class MainDTO {
  double? temp;
  @JsonKey(name: 'feels_like')
  double? feelsLike;
  @JsonKey(name: 'temp_min')
  double? tempMin;
  @JsonKey(name: 'temp_max')
  double? tempMax;
  int? pressure;
  int? humidity;

  MainDTO({
    this.temp,
    this.feelsLike,
    this.humidity,
    this.pressure,
    this.tempMin,
    this.tempMax,
  });

  factory MainDTO.fromJson(Map<String, dynamic> json) =>
      _$MainDTOFromJson(json);
}
