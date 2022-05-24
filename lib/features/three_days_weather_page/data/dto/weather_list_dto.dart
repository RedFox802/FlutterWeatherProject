import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/three_days_weather_page/entity/three_days_weather_entity.dart';

import 'daily_dto/daily_dto.dart';

part 'weather_list_dto.g.dart';

@JsonSerializable()
class WeatherListDTO {
  List<DailyDTO>? daily;

  WeatherListDTO({
    this.daily,
  });

  factory WeatherListDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherListDTOFromJson(json);

  List<ThreeDaysWeatherEntity> toEntity() {
    return daily != null ? [for (var item in daily!) item.toEntity()] : [];
  }
}
