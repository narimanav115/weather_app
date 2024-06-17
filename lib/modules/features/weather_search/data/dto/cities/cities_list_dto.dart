import 'package:json_annotation/json_annotation.dart';

import 'city_dto.dart';

part 'cities_list_dto.g.dart';

@JsonSerializable(createToJson: false)
class CitiesListDto {
  final List<CityDto>? data;

  const CitiesListDto({required this.data});

  factory CitiesListDto.fromJson(Map<String, Object?> json) =>
      _$CitiesListDtoFromJson(json);
}
