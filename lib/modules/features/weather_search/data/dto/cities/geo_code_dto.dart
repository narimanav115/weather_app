import 'package:json_annotation/json_annotation.dart';

part 'geo_code_dto.g.dart';

@JsonSerializable(
  createToJson: false,
  checked: true,
)
class GeoCodeDto {
  final num? latitude;
  final num? longitude;

  const GeoCodeDto({
    this.latitude,
    this.longitude,
  });

  factory GeoCodeDto.fromJson(Map<String, Object?> json) =>
      _$GeoCodeDtoFromJson(json);
}
