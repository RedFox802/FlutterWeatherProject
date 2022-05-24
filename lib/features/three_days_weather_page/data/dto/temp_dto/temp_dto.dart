import 'package:freezed_annotation/freezed_annotation.dart';

part 'temp_dto.g.dart';

@JsonSerializable()
class TempDTO {
  double? day;
  double? night;
  double? eve;
  double? morn;

  TempDTO({
    this.morn,
    this.eve,
    this.night,
    this.day,
  });

  factory TempDTO.fromJson(Map<String, dynamic> json) =>
      _$TempDTOFromJson(json);
}
