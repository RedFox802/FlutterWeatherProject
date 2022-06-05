// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_city_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChooseCityState _$$_ChooseCityStateFromJson(Map<String, dynamic> json) =>
    _$_ChooseCityState(
      loading: json['loading'] as bool? ?? false,
      error: json['error'] as bool? ?? false,
      city: json['city'] as String? ?? '',
    );

Map<String, dynamic> _$$_ChooseCityStateToJson(_$_ChooseCityState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'city': instance.city,
    };
