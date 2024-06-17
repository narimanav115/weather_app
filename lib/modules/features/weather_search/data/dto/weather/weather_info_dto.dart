import 'package:json_annotation/json_annotation.dart';

part 'weather_info_dto.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class WeatherInfoDto {
  final num temp;
  @JsonKey(name: 'temp_min')
  final num tempMin;
  @JsonKey(name: 'temp_max')
  final num tempMax;

  const WeatherInfoDto({
    required this.temp,
    required this.tempMin,
    required this.tempMax,
  });

  factory WeatherInfoDto.fromJson(Map<String, Object?> json) =>
      _$WeatherInfoDtoFromJson(json);
}
