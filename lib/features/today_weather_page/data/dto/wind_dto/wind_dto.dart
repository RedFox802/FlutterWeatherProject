import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind_dto.g.dart';

@JsonSerializable()
class WindDTO {
  double? speed;
  int? deg;
  double? gust;

  WindDTO({
    this.speed,
    this.deg,
    this.gust,
  });

  factory WindDTO.fromJson(Map<String, dynamic> json) =>
      _$WindDTOFromJson(json);
}
