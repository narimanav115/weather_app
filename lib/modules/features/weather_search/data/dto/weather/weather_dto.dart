import 'package:json_annotation/json_annotation.dart';

part 'weather_dto.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class WeatherDto {
  final String main;
  final String icon;

  const WeatherDto({
    required this.main,
    required this.icon,
  });

  factory WeatherDto.fromJson(Map<String, Object?> json) =>
      _$WeatherDtoFromJson(json);
}
