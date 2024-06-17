import 'package:json_annotation/json_annotation.dart';

part 'address_dto.g.dart';

@JsonSerializable(createToJson: false)
class AddressDto {
  final String countryCode;
  final String? stateCode;

  const AddressDto({
    required this.countryCode,
    this.stateCode,
  });

  factory AddressDto.fromJson(Map<String, Object?> json) =>
      _$AddressDtoFromJson(json);
}
