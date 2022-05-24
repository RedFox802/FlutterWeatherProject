import 'package:freezed_annotation/freezed_annotation.dart';

part 'coord_dto.g.dart';

@JsonSerializable()
class CoordDTO {
  double? lon;
  double? lat;

  CoordDTO({
    this.lon,
    this.lat,
  });

  factory CoordDTO.fromJson(Map<String, dynamic> json) =>
      _$CoordDTOFromJson(json);
}
