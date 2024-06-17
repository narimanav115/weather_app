import 'package:json_annotation/json_annotation.dart';
import 'weather_dto.dart';

import 'weather_info_dto.dart';

part 'weather_data_dto.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class WeatherDataDto {
  final WeatherInfoDto main;
  final List<WeatherDto> weather;

  const WeatherDataDto({
    required this.main,
    required this.weather,
  });

  factory WeatherDataDto.fromJson(Map<String, Object?> json) =>
      _$WeatherDataDtoFromJson(json);
}
