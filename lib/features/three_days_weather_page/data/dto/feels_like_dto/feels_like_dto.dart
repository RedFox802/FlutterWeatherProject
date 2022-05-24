import 'package:freezed_annotation/freezed_annotation.dart';

part 'feels_like_dto.g.dart';

@JsonSerializable()
class FeelsLikeDTO {
  double? day;
  double? night;
  double? eve;
  double? morn;

  FeelsLikeDTO({
    this.day,
    this.night,
    this.eve,
    this.morn,
  });

  factory FeelsLikeDTO.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeDTOFromJson(json);
}
