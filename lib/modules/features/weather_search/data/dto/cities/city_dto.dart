import 'package:json_annotation/json_annotation.dart';

import 'address_dto.dart';
import 'geo_code_dto.dart';

part 'city_dto.g.dart';

@JsonSerializable(createToJson: false)
class CityDto {
  final String name;
  final AddressDto address;
  final GeoCodeDto geoCode;

  const CityDto({
    required this.name,
    required this.address,
    required this.geoCode,
  });

  factory CityDto.fromJson(Map<String, Object?> json) =>
      _$CityDtoFromJson(json);
}
