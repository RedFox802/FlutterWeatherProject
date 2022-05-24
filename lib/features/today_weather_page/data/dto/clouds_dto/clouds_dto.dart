import 'package:freezed_annotation/freezed_annotation.dart';

part 'clouds_dto.g.dart';

@JsonSerializable()
class CloudsDTO {
  int? all;

  CloudsDTO({
    this.all,
  });

  factory CloudsDTO.fromJson(Map<String, dynamic> json) =>
      _$CloudsDTOFromJson(json);
}
