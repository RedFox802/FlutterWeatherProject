// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TempDTO _$TempDTOFromJson(Map<String, dynamic> json) => TempDTO(
      morn: (json['morn'] as num?)?.toDouble(),
      eve: (json['eve'] as num?)?.toDouble(),
      night: (json['night'] as num?)?.toDouble(),
      day: (json['day'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TempDTOToJson(TempDTO instance) => <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };
